$pGitPath = "C:\Program Files\Git"
$env:PATH = "$env:PATH;$pGitPath\cmd;$pGitPath\bin;$pGitPath\mingw\bin;";
# Import posh-git and load example profile
Import-Module posh-git
. (Resolve-Path "$env:powershell\Modules\posh-git\profile.example.ps1")