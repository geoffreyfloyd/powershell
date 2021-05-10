Set-Alias run-android (Resolve-Path "$env:powershell\RunAndroid.ps1")
Set-Alias release-android (Resolve-Path "$env:powershell\ReleaseAndroid.ps1")
Set-Alias install-android (Resolve-Path "$env:powershell\InstallAndroid.ps1")


$env:ANDROID_HOME = "$env:LocalAppData\Android\sdk"
$env:ANDROID_TOOLS = "$env:LocalAppData\Android\sdk\tools"
$env:ANDROID_BLDTOOLS = "$env:LocalAppData\Android\sdk\build-tools\22.0.1"
#$env:ANDROID_BLDTOOLS = "$env:LocalAppData\Android\sdk\build-tools\23.0.1"
#$env:ANDROID_BLDTOOLS = "$env:LocalAppData\Android\sdk\build-tools\23.0.3"
$env:ANDROID_NDK = "$env:LocalAppData\Android\ndk"
$env:GRADLE_HOME = "C:\Program Files\Java\gradle-2.13"

# HOME
# $env:ANDROID_PFTOOLS = "$env:LocalAppData\Android\sdk\platform-tools"
# $env:JAVA_HOME = "C:\Program Files\Java\jdk1.8.0_171"
# #$env:JAVA_HOME = "C:\Program Files\Java\jdk-10.0.1"
# $env:PATH = "$env:PATH;$env:JAVA_HOME;$env:JAVA_HOME\bin;$env:ANDROID_HOME;$env:ANDROID_HOME\tools;$env:ANDROID_HOME\platform-tools;$env:GRADLE_HOME\bin;$env:ANDROID_NDK;$env:ANDROID_BLDTOOLS;";

# WORK
$env:ANDROID_PFTOOLS = "D:\bin\platform-tools"
$env:JAVA_HOME = "C:\Program Files\Java\jdk1.8.0_241"
$env:JRE_HOME = "C:\Program Files\Java\jre1.8.0_241"
$env:ZOOKEEPER_HOME = "C:\Apache\apache-zookeeper-3.5.6-bin"
# env:LocalAppData\Android\sdk
$env:PATH = "$env:PATH;$env:JAVA_HOME;$env:JRE_HOME\bin;$env:ZOOKEEPER_HOME\bin;$env:ANDROID_PFTOOLS;$env:JAVA_HOME\bin;$env:ANDROID_HOME;$env:ANDROID_HOME\tools;$env:ANDROID_HOME\platform-tools;$env:GRADLE_HOME\bin;$env:ANDROID_NDK;$env:ANDROID_BLDTOOLS;C:\windows\system32\wbem";
