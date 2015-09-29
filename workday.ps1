$myArray = "Sunday","Saturday";

$today = (get-date).dayofweek;
$weekend = "false";
foreach ($element in $myArray) {
	if ($element -eq $today) {
		$weekend = "true";
		
	}
}

if ($weekend -eq "false") {
	echo Skype!
	cmd /c (Resolve-Path "C:\Program Files (x86)\Skype\Phone\Skype.exe") /minimized /regrun
}