<#
.SYNOPSIS
    Sets up the GitHub Git Shell Environment
.DESCRIPTION
    Sets up the proper PATH and ENV to use GitHub for Window's shell environment
    Don't edit this file directly, it is generated on install.
    Generally you would run this from your Powershell Profile like this:

    . (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")

.PARAMETER SkipSSHSetup
    If true, skips calling GitHub.exe to autoset and upload ssh-keys
#>
[CmdletBinding()]
Param(
    [switch]
    $SkipSSHSetup = $false
)

if ($env:github_shell -eq $null) {

  Write-Verbose "Running GitHub\shell.ps1"

  Push-Location (Split-Path -Path $MyInvocation.MyCommand.Definition -Parent)

  $env:github_posh_git = Resolve-Path "$env:LocalAppData\GitHub\PoshGit_869d4c5159797755bc04749db47b166136e59132"
  $env:github_git = Resolve-Path "$env:LocalAppData\GitHub\PortableGit_c7e0cbde92ba565cb218a521411d0e854079a28c"
  $env:PLINK_PROTOCOL = "ssh"
  $env:TERM = "msys"

  if ($env:EDITOR -eq $null) {
    $env:EDITOR = "GitPad"
  }

  # Setup PATH
  $pGitPath = $env:github_git
  $appPath = Resolve-Path "$env:LocalAppData\Apps\2.0\TL3EEK0H.QJG\46AGT1PE.XTM\gith..tion_317444273a93ac29_0003.0000_f3a9f44c4e4f6514"

  $env:PATH = "$env:PATH;$pGitPath\cmd;$pGitPath\bin;$pGitPath\mingw\bin;$appPath;";

  if (!$SkipSSHSetup) {
    & (Join-Path $appPath GitHub.exe) --set-up-ssh
  }

  Pop-Location

  Import-Module posh-git

} else { Write-Verbose "GitHub shell environment already setup" }
