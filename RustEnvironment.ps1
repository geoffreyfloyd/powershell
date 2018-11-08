$env:RUST = "$env:USERPROFILE\.cargo\bin"
$env:EMSDK = "C:\emsdk"
$env:EM_CONFIG = "C:\Users\User\.emscripten"
$env:BINARYEN_ROOT = "C:\emsdk\clang\e1.37.28_64bit\binaryen"
# $env:JAVA_HOME = "C:\emsdk\java\7.45_64bit"
$env:EMSCRIPTEN = "C:\emsdk\emscripten\1.37.28"

$env:PATH = "$env:PATH;$env:RUST;$env:EMSDK;$env:EM_CONFIG;$env:BINARYEN_ROOT;$env:EMSCRIPTEN;";
