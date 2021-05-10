# $env:PATH = "$env:PATH;$env:APPDATA\npm;$env:ProgramW6432\nodejs\;";
# Import posh-npm and load example profile
Import-Module posh-npm
. (Resolve-Path "$env:powershell\Modules\posh-npm\profile.example.ps1")

# ALIASES FOR GIT
function Npm-Run($1, $2) {
	npm run $1 $2;
}

Set-Alias run Npm-Run
