
# SHOW
Set-Alias show Get-ChildItem

# ANDROID DEVELOPMENT ENVIRONMENT
Set-Alias env-android (Resolve-Path "$env:powershell\AndroidEnvironment.ps1")
Set-Alias env-and (Resolve-Path "$env:powershell\AndroidEnvironment.ps1")
Set-Alias env-a (Resolve-Path "$env:powershell\AndroidEnvironment.ps1")

# NODE DEVELOPMENT ENVIRONMENT
Set-Alias env-node (Resolve-Path "$env:powershell\NodeEnvironment.ps1")
Set-Alias env-n (Resolve-Path "$env:powershell\NodeEnvironment.ps1")

#SVN
# C:\Program Files (x86)\VisualSVN\bin;%systemroot%\idmu\common;C:\ProgramFiles\TortoiseSVN\bin;

#VISUAL STUDIO
# C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;

#SQL ENVIRONMENT V9
# c:\Program Files (x86)\Microsoft SQL Server\90\Tools\binn\;
#SQL ENVIRONMENT V10
# c:\Program Files\Microsoft SQL Server\100\Tools\Binn\;
# c:\Program Files (x86)\Microsoft SQL Server\100\DTS\Binn\;
# c:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\;
# c:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\VSShell\Common7\IDE\;
#SQL ENVIRONMENT V11
# C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;
#SQL ENVIRONMENT V12
# C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;

# SET CWD
cd c:\prj\

. (Resolve-Path "$env:powershell\GitEnvironment.ps1")
. (Resolve-Path "$env:powershell\ColorOutput.ps1")