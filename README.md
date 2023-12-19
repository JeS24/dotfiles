# dotfiles + scripts
This repository hosts the dotfiles, I use. It also contains some scripts that are sort of like mini-utilities.

## dotfiles (`./.config/`)
| File | Description |
| ---- | ----------- |
| [*.configuration.dsc.yaml](./.config/winget/) | Windows [Desired State Configurations (DSC)](https://www.youtube.com/watch?v=9HlM0xuu01M) |
| [jes24-default.code-profile](./.config/.vscode/jes24-default.code-profile) | VS Code profile |
| [.zshrc](./.config/shell/zsh/.zshrc) | zsh configuration |
| [starship.toml](./.config/shell/starship/starship.toml) | Starship configuration |
| [Microsoft.PowerShell_profile.ps1](./.config/shell/pwsh/Microsoft.PowerShell_profile.ps1) | Powershell (> v7) configuration |
| [.hushlogin](./.config/shell/.hushlogin) | Hides the login message (Empty file)
| [.nanorc](./.config/nano/.nanorc) | Nano configuration |
| [.gitconfig](./.config/git/.gitconfig) | Git configuration |
| [`startup.jl`](./.config/julia/startup.jl) | Julia startup file |

## Scripts (`./scripts/`)

| Script | Description |
| ------ | ----------- |
| [`socket_test.py`](./scripts/socket_test.py) | Checks if the socket is open. `ping` is not always reliable. More details can be found here: https://docs.python.org/3/library/socket.html |
| [`julia-scicomp.jl`](./scripts/julia-scicomp.jl) | Installs useful utility & scientific computing Julia packages |
