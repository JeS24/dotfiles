# "C:\Users\<USER>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"

# NOTE: Ensure, you are using Windows Terminal and not the default PowerShell / CMD.
# NOTE: Also, install PowerShell 7+: winget install Microsoft.PowerShell
# NOTE: You will also need to use a Nerd font. See https://www.nerdfonts.com/font-downloads.
# NOTE: Install oh-my-posh and posh-git first, like so (You may need to enable Developer Mode in Windows Settings):
# winget install JanDeDobbeleer.OhMyPosh -s winget
# Install-Module -Name posh-git
# Install-Module -Name Terminal-Icons

# OMP
oh-my-posh init pwsh | Invoke-Expression
# oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/clean-detailed.omp.json' | Invoke-Expression  # Superceded by Starship

Import-Module posh-git
Import-Module -Name Terminal-Icons


# Some functions to imitate zsh / *nix behaviour
function take { param ( $DirName ) mkdir $DirName && cd $DirName }

function tk { param ( $proc ) taskkill /IM $proc /F }

## `watch` | clear; causes screen-flicker
function watch { param ( $interval, $cmd ) while(1) { clear; [Console]::CursorTop=0;[Console]::CursorLeft=0; & $cmd; sleep $interval } }

## Some utils to count files & dirs
function cnt { (Get-ChildItem | Measure-Object).Count }
function cntf { (Get-ChildItem -File | Measure-Object).Count }
function cntd { (Get-ChildItem -Directory | Measure-Object).Count }
function cntfr { (Get-ChildItem -Recurse -File | Measure-Object).Count }
function cntdr { (Get-ChildItem -Recurse -Directory | Measure-Object).Count }

### Copies every nth file
function cpn {
    $n = $args[0]
    $src = $args[1]
    $dst = $args[2]
    $i = 0
    $files = Get-ChildItem $src
    foreach ($file in $files) {
        if ($i % $n -eq 0) {
            Copy-Item $file.FullName $dst
        }
        $i++
    }
}

## winget
function wls { winget list }
function wfd { param ( $query ) winget search $query }
function win { param ( $app ) winget install $app }
function wup { param ( $app ) winget upgrade $app }
function wupa { sudo winget upgrade --silent --accept-source-agreements --accept-package-agreements }

function wun { param ( $app ) winget uninstall $app }

## RDP / MSTSC
function rdp { param ( $ip ) mstsc /v:$ip }

## Python + Django
### Activates virtualenv at $VenvDir
function vs { param ( $VenvDir ) & $VenvDir/Scripts/activate }
### Activates virtualenv at $VenvDir, upgrades basic packages, and opens VSCode in current dir
function vsc { param ( $VenvDir ) & $VenvDir/Scripts/activate && pip install --upgrade pip setuptools wheel && code . }
### Runs python's http server
function pys { param ( $Port ) python -m http.server $Port --bind localhost }
function pmrs { python manage.py runserver }
function pmc { python manage.py createsuperuser }
function pmf { python manage.py flush }
function pmk { python manage.py makemigrations }
function pmm { python manage.py migrate }
function redo { pmf && rm .\db.sqlite3 }
function redo2 { pmk && pmm && pmc }


# Aliases
## General
New-Alias restart "Restart-Computer"

## Starship init
Invoke-Expression (& 'C:\Program Files\starship\bin\starship.exe' init powershell --print-full-init | Out-String)

## PowerToys CommandNotFound module
#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module

Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58
