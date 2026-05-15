#!/usr/bin/env bash
set -euo pipefail

SYSTEM_DIR="$HOME/system"
SYSTEMD_USER_DIR="$HOME/.config/systemd/user"
DUMP_DIR="$HOME/tmux-dumps"

echo "Creating directories..."
mkdir -p "$SYSTEM_DIR"
mkdir -p "$SYSTEMD_USER_DIR"
mkdir -p "$DUMP_DIR"

# tmux dump script
cat > "$SYSTEM_DIR/tmux-dump.sh" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

OUT="$HOME/tmux-dumps"
mkdir -p "$OUT"

ts=$(date +%F_%H-%M-%S)

# Exit cleanly if no tmux server exists
if ! tmux ls >/dev/null 2>&1; then
    echo "No tmux sessions found"
    exit 0
fi

tmux list-panes -a -F '#{session_name}|#{window_index}|#{pane_index}|#{pane_id}' \
| while IFS='|' read -r s w p pane_id; do
    file="$OUT/${ts}_${s}_w${w}_p${p}.log"

    tmux capture-pane \
        -p \
        -S - \
        -t "$pane_id" \
        > "$file"

    gzip -f "$file"
done

# delete dumps older than 7 days
find "$OUT" -name "*.gz" -mtime +7 -delete || true
EOF

chmod +x "$SYSTEM_DIR/tmux-dump.sh"

# Autosave service
cat > "$SYSTEMD_USER_DIR/tmux-autosave.service" <<EOF
[Unit]
Description=Periodic tmux dump

[Service]
Type=oneshot
ExecStart=$SYSTEM_DIR/tmux-dump.sh
EOF

# Autosave timer
cat > "$SYSTEMD_USER_DIR/tmux-autosave.timer" <<EOF
[Unit]
Description=Run tmux dump every 5 minutes

[Timer]
OnBootSec=2min
OnUnitActiveSec=5min
Persistent=true

[Install]
WantedBy=timers.target
EOF

# Final shutdown/reboot dump
cat > "$SYSTEMD_USER_DIR/tmux-final.service" <<EOF
[Unit]
Description=Final tmux dump before shutdown/reboot
Before=shutdown.target reboot.target halt.target

[Service]
Type=oneshot
ExecStart=$SYSTEM_DIR/tmux-dump.sh

[Install]
WantedBy=default.target
EOF

echo
echo "Enabling linger (requires sudo once)..."
sudo loginctl enable-linger "$USER"

echo
echo "Reloading systemd user units..."
systemctl --user daemon-reload

echo
echo "Enabling timer..."
systemctl --user enable --now tmux-autosave.timer

echo
echo "Enabling final shutdown service..."
systemctl --user enable tmux-final.service

echo
echo "Testing dump script..."
"$SYSTEM_DIR/tmux-dump.sh"

echo
echo "Done."
echo
echo "Check dumps:"
echo "  ls $DUMP_DIR"
echo
echo "Check timer:"
echo "  systemctl --user list-timers | grep tmux"
echo
echo "Check final shutdown service:"
echo "  systemctl --user status tmux-final.service"

## Run it
# mkdir -p ~/system
# nano ~/system/setup-tmux-dump.sh
# chmod +x ~/system/setup-tmux-dump.sh
# ~/system/setup-tmux-dump.sh

## Verify reboot hook - after a reboot
# journalctl --user -u tmux-final.service -b -1
# ls ~/tmux-dumps
