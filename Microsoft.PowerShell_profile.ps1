$env:powershell = "$env:HOMEDRIVE$env:HOMEPATH\Documents\WindowsPowerShell"
. (Resolve-Path "$env:powershell\index.ps1")

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
