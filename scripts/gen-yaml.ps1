<#
  Gets all installed winget packages and exports them to a single windows.configuration.dsc.yaml file
#>
$installed = Get-WinGetPackage -Source winget | Select-Object -ExpandProperty Id | rg -v "MSIX|ARP"  # Ignore MSIX and ARP packages

foreach ($app in $installed) {
  winget configure export -o "windows.configuration.dsc.yaml" --package-id $app
}
