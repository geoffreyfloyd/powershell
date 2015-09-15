$env:ANDROID_HOME = "$env:LocalAppData\Android\sdk"
$env:AND_PLT = "$env:LocalAppData\Android\sdk\platform-tools"
$env:Path = "C:\ProgramData\Oracle\Java\javapath;$env:ANDROID_HOME;$env:AND_PLT";

. (Resolve-Path "$env:powershell\GitEnvironment.ps1")
