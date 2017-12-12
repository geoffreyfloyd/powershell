$env:PATH = "$env:PATH;$env:APPDATA\npm;$env:ProgramW6432\nodejs\;";
# Import posh-npm and load example profile
Import-Module posh-npm
. (Resolve-Path "$env:powershell\Modules\posh-npm\profile.example.ps1")
