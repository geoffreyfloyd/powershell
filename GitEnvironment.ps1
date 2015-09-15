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
  $env:github_git = Resolve-Path "$env:LocalAppData\GitHub\PortableGit_c2ba306e536fdf878271f7fe636a147ff37326ad"
  $env:PLINK_PROTOCOL = "ssh"
  $env:TERM = "msys"
  $env:HOME = $HOME
  $env:TMP = $env:TEMP = [system.io.path]::gettemppath()
  if ($env:EDITOR -eq $null) {
    $env:EDITOR = "GitPad"
  }

  # Setup PATH
  $pGitPath = $env:github_git
  $appPath = Resolve-Path "$env:LocalAppData\Apps\2.0\7NWMARN5.KXM\5HN4TD1J.049\gith..tion_317444273a93ac29_0003.0000_4d58bde1c4cef1d4"
  $msBuildPath = "$env:SystemRoot\Microsoft.NET\Framework\v4.0.30319"

  $env:Path = "$env:Path;$env:PSModulePath;C:\ProgramData\chocolatey\bin;$pGitPath\cmd;$pGitPath\bin;$pGitPath\mingw\bin;$appPath;$msbuildPath";

  if (!$SkipSSHSetup) {
    & (Join-Path $appPath GitHub.exe) --set-up-ssh
  }

  Pop-Location

} else { Write-Verbose "GitHub shell environment already setup" }
