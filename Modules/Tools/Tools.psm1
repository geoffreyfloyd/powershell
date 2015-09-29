function Set-Directory-Better {
	[CmdletBinding()]
	param (
		[string]$dirname
	)
	
	begin {

	}
	
	process {
	    if ($dirname -eq "pt") {
			cd C:\aedev\web\powertrackmobile
		}
		elseif ($dirname -eq "doozy") {
			cd C:\prj\doozy
		}
		else {
			cd $dirname
		}
	}
}

# create an alias
New-Alias cwd Set-Directory-Better

# make sure our two functions and the alias get
# exposed when someone imports this module
Export-ModuleMember -function Set-Directory-Better
Export-ModuleMember -Alias cwd