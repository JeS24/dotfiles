List of programs installed via the `windows.configuration.dsc.yaml` file
---
* NOTE: ***THIS IS A COMBINED VERSION OF THE OTHER DSC CONFIGS IN THIS FOLDER***.
* NOTE: Requires pre-release `winget` - https://aka.ms/getwingetpreview.
* NOTE: Ensure nothing else is running, as the command will force restart explorer.exe.
* NOTE: Some are optional (like Vesktop or Discord) due to conflicts with other apps. Check the `yaml` files for "NOTE:"s.
* To run, use the following command:
```powershell
winget confgiure ./<path/to/yaml> --accept-configuration-agreements
# Without the --accept-configuration-agreements flag, the command will validate and then prompt you to accept the agreements.
# The flag automates this.
```

## Table of Contents
- [List of programs installed via the `windows.configuration.dsc.yaml` file](#list-of-programs-installed-via-the-windowsconfigurationdscyaml-file)
- [Table of Contents](#table-of-contents)
  - [Developer system setup - `dev.configuration.dsc.yaml`](#developer-system-setup---devconfigurationdscyaml)
  - [Terminal \& Shell utils - `cli.configuration.dsc.yaml`](#terminal--shell-utils---cliconfigurationdscyaml)
  - [Coding - `coding.configuration.dsc.yaml`](#coding---codingconfigurationdscyaml)
  - [Microsoft Redistributable Packages - `deps.configuration.dsc.yaml`](#microsoft-redistributable-packages---depsconfigurationdscyaml)
  - [Utilities - `utils.configuration.dsc.yaml`](#utilities---utilsconfigurationdscyaml)
  - [Gaming - `gaming.configuration.dsc.yaml`](#gaming---gamingconfigurationdscyaml)

### Developer system setup - `dev.configuration.dsc.yaml`
* See the file for more details.

### Terminal & Shell utils - `cli.configuration.dsc.yaml`
| Name                                      | ID                                         | Source      |
|-------------------------------------------|--------------------------------------------|-------------|
| PowerShell 7-x64                          | Microsoft.PowerShell                       | winget      |
| Pandoc                                    | JohnMacFarlane.Pandoc                      | winget      |
| ImageMagick 7.1.1-21 Q16-HDRI (64-bit)    | ImageMagick.ImageMagick                    | winget      |
| Oh My Posh version                        | JanDeDobbeleer.OhMyPosh                    | winget      |
| starship                                  | Starship.Starship                          | winget      |
| RipGrep MSVC                              | BurntSushi.ripgrep.MSVC                    | winget      |
| GNU Nano                                  | GNU.Nano                                   | winget      |
| Nmap 7.80                                 | Insecure.Nmap                              | winget      |
| aria2                                     | aria2.aria2                                | winget      |
| lf                                        | gokcehan.lf                                | winget      |
| NTop                                      | gsass1.NTop                                | winget      |
| fzf                                       | junegunn.fzf                               | winget      |
| bat                                       | sharkdp.bat                                | winget      |
| fd                                        | sharkdp.fd                                 | winget      |
| miniserve                                 | svenstaro.miniserve                        | winget      |
| gsudo v2.4.1-fixnoninteractive            | gerardog.gsudo                             | winget      |
| Node.js                                   | OpenJS.NodeJS                              | winget      |
| tre-command                               | ca.duan.tre-command                        | winget      |
| MacType                                   | MacType.MacType                            | winget      |

### Coding - `coding.configuration.dsc.yaml`
| Name                                      | ID                                         | Source      |
|-------------------------------------------|--------------------------------------------|-------------|
| Git                                       | Git.Git                                    | winget      |
| GitHub Desktop                            | GitHub.GitHubDesktop                       | winget      |
| Git LFS version                           | GitHub.GitLFS                              | winget      |
| GitHub CLI                                | GitHub.cli                                 | winget      |
| Strawberry Perl (64-bit)                  | StrawberryPerl.StrawberryPerl              | winget      |
| Microsoft Visual Studio Code (User)       | Microsoft.VisualStudioCode                 | winget      |
| Julia 1.9.4                               | Julialang.Julia                            | winget      |
| Python 3.11                               | Python.Python.3.11                         | winget      |
| Notepad++ (64-bit x64)                    | Notepad++.Notepad++                        | winget      |

### Microsoft Redistributable Packages - `deps.configuration.dsc.yaml`
| Name                                       | ID                                    | Source |
|--------------------------------------------|---------------------------------------|--------|
| Microsoft Visual C++ 2008 Redistributabl…  | Microsoft.VCRedist.2008.x86           | winget |
| Microsoft Visual C++ 2010  x86 Redistrib…  | Microsoft.VCRedist.2010.x86           | winget |
| Microsoft Visual C++ 2010  x64 Redistrib…  | Microsoft.VCRedist.2010.x64           | winget |
| Microsoft Visual C++ 2012 Redistributabl…  | Microsoft.VCRedist.2012.x86           | winget |
| Microsoft Visual C++ 2012 Redistributabl…  | Microsoft.VCRedist.2012.x64           | winget |
| Microsoft Visual C++ 2013 Redistributabl…  | Microsoft.VCRedist.2013.x86           | winget |
| Microsoft Visual C++ 2015-2022 Redistrib…  | Microsoft.VCRedist.2015+.x64          | winget |
| Microsoft Visual C++ 2015-2019 Redistrib…  | Microsoft.VCRedist.2015+.x86          | winget |
| Microsoft .NET Runtime - 6.0.25 (x64)      | Microsoft.DotNet.Runtime.6            | winget |
| Microsoft .NET Runtime - 7.0.14 (x64)      | Microsoft.DotNet.Runtime.7            | winget |
| Microsoft Windows Desktop Runtime - 6.0.…  | Microsoft.DotNet.DesktopRuntime.6     | winget |
| Microsoft Windows Desktop Runtime - 7.0.…  | Microsoft.DotNet.DesktopRuntime.7     | winget |

### Utilities - `utils.configuration.dsc.yaml`
| Name                                       | ID                                         | Source      |
|--------------------------------------------|--------------------------------------------|-------------|
| PDF Reader - View, Edit, Annotate          | 9WZDNCRDJXP4                               | msstore     |
| Todoist                                    | Doist.Todoist                              | winget      |
| Signal                                     | OpenWhisperSystems.Signal                  | winget      |
| Telegram Desktop                           | Telegram.TelegramDesktop                   | winget      |
| Internet Download Manager                  | Tonec.InternetDownloadManager              | winget      |
| CrystalDiskInfo                            | CrystalDewWorld.CrystalDiskInfo            | winget      |
| HWiNFO64                                   | REALiX.HWiNFO                              | winget      |
| DisplayFusion                              | BinaryFortress.DisplayFusion               | winget      |
| NanaZip                                    | M2Team.NanaZip                             | winget      |
| HandBrake                                  | HandBrake.HandBrake                        | winget      |
| TreeSize Free                              | JAMSoftware.TreeSize.Free                  | winget      |
| Fluent Reader                              | yang991178.fluent-reader                   | winget      |
| Sonic Pi                                   | SonicPi.SonicPi                            | winget      |
| Mozilla Firefox (x64 en-US)                | Mozilla.Firefox                            | winget      |
| Thorium (AVX2)                             | Alex313031.Thorium.AVX2                    | winget      |
| Everything            (x64)                | voidtools.Everything                       | winget      |
| EverythingToolbar                          | stnkl.EverythingToolbar                    | winget      |
| MPC-BE x64                                 | MPC-BE.MPC-BE                              | winget      |
| PowerToys (Preview) x64                    | Microsoft.PowerToys                        | winget      |
| MeshLab 2022.02                            | CNRISTI.MeshLab                            | winget      |
| FortiClient VPN                            | Fortinet.FortiClientVPN                    | winget      |
| FFmpeg                                     | Gyan.FFmpeg                                | winget      |
| Hack Fonts                                 | SourceFoundry.HackFonts                    | winget      |
| NVIDIA GeForce Experience                  | Nvidia.GeForceExperience                   | winget      |
| NVIDIA PhysX System Software               | Nvidia.PhysX                               | winget      |

### Gaming - `gaming.configuration.dsc.yaml`
| Name                                       | ID                                         | Source      |
|--------------------------------------------|--------------------------------------------|-------------|
| Discord                                    | Discord.Discord                            | winget      |
| Vesktop                                    | Vencord.Vesktop                            | winget      |
| Steam                                      | Valve.Steam                                | winget      |
| Legendary (Epic CLI client)                | derrod.legendary                           | winget      |
