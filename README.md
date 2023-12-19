# dotfiles + scripts
This repository hosts the dotfiles, I use. It also contains some scripts that are sort of like mini-utilities.

## dotfiles (`./.config/`)
| File | Description |
| ---- | ----------- |
| *.configuration.dsc.yaml | Windows [Desired State Configurations (DSC)](https://www.youtube.com/watch?v=9HlM0xuu01M) |
| jes24-default.code-profile | VS Code profile |
| .zshrc | zsh configuration |
| starship.toml | Starship configuration |
| Microsoft.PowerShell_profile.ps1 | Powershell (> v7) configuration |
| .hushlogin | Hides the login message (Empty file)
| .nanorc | Nano configuration |
| .gitconfig | Git configuration |
| `startup.jl` | Julia startup file |

## Scripts (`./scripts/`)

| Script | Description |
| ------ | ----------- |
| `socket_test.py` | Checks if the socket is open. `ping` is not always reliable. More details can be found here: https://docs.python.org/3/library/socket.html |
| `julia-scicomp.jl` | Installs useful utility & scientific computing Julia packages |
