#!/bin/bash

# Exit on error
set -e

# Install Nala and some packages
sudo apt update
sudo apt install -y nala gpg

# Install eza
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

sudo nala install -y \
    zsh curl aria2 fzf git bat tree ranger ncdu nvtop tmux parallel btop wget

# Install zsh, Oh My Zsh, Starship prompt, and zsh extensions
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes

# Clone zsh plugins
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# Set up dotfiles
curl -fsSL https://raw.githubusercontent.com/JeS24/dotfiles/refs/heads/main/.config/shell/zsh/.zshrc -o ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/JeS24/dotfiles/refs/heads/main/.config/shell/zsh/.tmux.conf -o ~/.tmux.conf
curl -fsSL https://raw.githubusercontent.com/JeS24/dotfiles/refs/heads/main/.config/shell/zsh/.nanorc -o ~/.nanorc

# Set zsh as the default shell
chsh -s "$(which zsh)"

# Create .ssh directory and some files there with correct permissions
mkdir -p ~/.ssh
touch ~/.ssh/known_hosts
touch ~/.ssh/config
touch ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 -R ~/.ssh/*

# Set up Miniconda + tmux backup automation
mkdir -p ~/system
cd ~/system

# Set up tmux backup automation
echo "Setting up tmux backup automation..."

curl -fsSL https://raw.githubusercontent.com/JeS24/dotfiles/main/scripts/tmux-backup.sh \
    -o "$HOME/system/tmux-backup.sh"

chmod +x "$HOME/system/tmux-backup.sh"
"$HOME/system/tmux-backup.sh"

# Set up Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
eval "$($HOME/miniconda/bin/conda shell.zsh hook)"
conda init zsh

# Accept conda licenses
conda install -n base -c defaults conda-anaconda-tos
conda config --set plugins.auto_accept_tos true

# Install nvitop from conda-forge
conda install -y -c conda-forge nvitop

# Back to home
cd ~

# hushlogin
touch ~/.hushlogin

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | bash
source $HOME/.local/bin/env

# Final message
echo "Setup complete. Please restart your terminal or run 'exec zsh' to start using Zsh with your new configuration."
