$env:powershell = "$env:HOMEDRIVE$env:HOMEPATH\Documents\WindowsPowerShell"
. (Resolve-Path "$env:powershell\index.ps1")
# Load posh-npm example profile
. (Resolve-Path "$env:powershell\Modules\posh-npm\profile.example.ps1")
# Load posh-npm example profile
. 'C:\Users\Owner\Documents\WindowsPowerShell\Modules\posh-npm\profile.example.ps1'

