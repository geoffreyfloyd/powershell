$pGitPath = "C:\Program Files\Git"
$env:PATH = "$env:PATH;$pGitPath\cmd;$pGitPath\bin;$pGitPath\mingw\bin;";
# Import posh-git and load example profile
Import-Module posh-git
. (Resolve-Path "$env:powershell\Modules\posh-git\profile.example.ps1")

# ALIASES FOR GIT
function Git-Branch($1, $2) {
	git branch $1 $2;
}
function Git-Checkout ($branch) {
	git checkout $branch;
}
function Git-Delete-Branch($branch) {
	git branch -d $branch;
}
function Git-Unsafe-Delete-Branch($branch) {
	git branch -D $branch;
	git push --delete origin $branch
}
function Git-Obliterate-Branch($branch) {
	git branch -D $branch;
	git push --delete origin $branch
}
function Git-Log {
	git log
}
function Git-Log-Summary {
	git log --pretty=format:"%h - %an, %ar : %s"
}
function Git-Master {
	git stash;
	git checkout master;
	git pull;
}
function Git-New-Branch ($branch) {
	git checkout -b $branch;
}
function Git-Pull ($origin, $branch) {
	git pull $origin $branch;
}
function Git-Push ($branch, $arg) {
	git push $branch $arg;
}
Set-Alias gut git
Set-Alias got git

Set-Alias branch Git-Branch
Set-Alias br Git-Branch

Set-Alias dbranch Git-Delete-Branch
Set-Alias db Git-Delete-Branch

Set-Alias killbranch Git-Unsafe-Delete-Branch
Set-Alias kb Git-Unsafe-Delete-Branch

Set-Alias newbranch Git-New-Branch
Set-Alias nb Git-New-Branch

Set-Alias fuckyobranch Git-Obliterate-Branch
Set-Alias fyb Git-Obliterate-Branch

Set-Alias checkout Git-Checkout
Set-Alias co Git-Checkout

Set-Alias log Git-Log
Set-Alias summary Git-Log-Summary

Set-Alias master Git-Master

Set-Alias pull Git-Pull
Set-Alias push Git-Push

function Rap-Stats ($since) {
	node stats.js --since $since
}
Set-Alias stats Rap-Stats
