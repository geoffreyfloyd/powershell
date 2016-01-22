
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
cd d:\prj\

# LOCAL VARIABLES
$msBuildPath = "$env:SystemRoot\Microsoft.NET\Framework\v4.0.30319"
$basePath = "d:\bin;$env:SystemRoot\System32;C:\ProgramData\chocolatey\bin;$msbuildPath;"

# ENVIRONMENT VARIABLES
$env:ANDROID_HOME = "$env:LocalAppData\Android\sdk"
$env:ANDROID_TOOLS = "$env:LocalAppData\Android\sdk\tools"
$env:ANDROID_PFTOOLS = "$env:LocalAppData\Android\sdk\platform-tools"
$env:ANDROID_BLDTOOLS = "$env:LocalAppData\\Android\sdk\build-tools\22.0.1"
$env:ANDROID_NDK = "$env:LocalAppData\\Android\ndk"
$env:HOME = $HOME
$env:JAVA_HOME = "C:\Program Files\Java\jdk1.8.0_60"
$env:TMP = $env:TEMP = [system.io.path]::gettemppath()
$env:PYTHON = "C:\Python27"

# SET PATH
$env:PATH = "$basePath;$env:PSModulePath;$env:PYTHON;"

. (Resolve-Path "$env:powershell\GitEnvironment.ps1")
. (Resolve-Path "$env:powershell\NodeEnvironment.ps1")
. (Resolve-Path "$env:powershell\AndroidEnvironment.ps1")
. (Resolve-Path "$env:powershell\SvnEnvironment.ps1")

# COLORIZE OUTPUT
. (Resolve-Path "$env:powershell\ColorOutput.ps1")