param([string]$dPath="d") 

function HandleInLineComment([string]$append){
	[int]$index = $append.IndexOf("//")
	if($index -gt -1){
		$append = $append.Substring(0, $index)
	}
	return $append
}

function HandleMultilineOpen([string]$append, [ref]$openComment){
	while($append.contains("/*")){
		$indexOpen = $append.IndexOf("/*")
		if($append.contains("*/")){ # closes on the same line as the open
			([bool]$openComment.value) = $false
			$indexClose = $append.IndexOf("*/")
			$append = ($append.Substring(0, $indexOpen) + " " + $append.Substring($indexClose + 2) + " ")	
		}
		else{
			([bool]$openComment.value) = $true
			$append = ($append.Substring(0, $indexOpen) + " ")
		}	
	}
	if($append.contains("//")){
		$append = HandleInLineComment $append
	}
	return $append
}

Get-ChildItem $dPath -Filter *.d -Recurse | Foreach-Object {
	[string]$output = ""
	[bool]$openComment = $false
    foreach($line in [System.IO.File]::ReadLines($_.FullName))
	{
		[string]$append = $line
		$writeOverride = $false
		
		if($append.contains("/*")){
			$append = HandleMultilineOpen $append ([ref]$openComment)
			$writeOverride = $true
		}
		if($append.contains("*/")){
			$openComment = $false
			[int]$indexClose = $append.IndexOf("*/") 
			$append = $append.Substring($indexClose + 2) + " "
			$append = HandleInLineComment $append
		}		
		if($append.contains("//"))
		{
			$append = HandleInLineComment $append
		}		
		if(!$openComment -or $writeOverride){
			$append = $append.replace("`t", " ") + " "
			$output += $append
		}
	}
	while ($output.contains("  ")){
		$output = $output.replace("  ", " ")
	}
	if($output.contains(", ")){
		$output = $output.replace(", ", ",")
	}
	if($output.contains(" ~")){
		$output = $output.replace(" ~", "~")
	}
	if($output.contains("~ ")){
		$output = $output.replace("~ ", "~")
	}
	if($output.contains(" =")){
		$output = $output.replace(" =", "=")
	}
	if($output.contains("= ")){
		$output = $output.replace("= ", "=")
	}
	if($output.contains("IF~~THEN REPLY")){
		$output = $output.replace("IF~~THEN REPLY", "++")
	}
	if($output.contains(" ++ ")){
		$output = $output.replace(" ++ ", "++")
	}
	if($output.contains(" GOTO ")){
		$output = $output.replace(" GOTO ", "+")
	}
	if($output.contains(" GOTO")){
		$output = $output.replace(" GOTO", "+")
	}
	if($output.contains("GOTO ")){
		$output = $output.replace("GOTO ", "+")
	}
	if($output.contains(") ")){
		$output = $output.replace(") ", ")")
	}
	if($output.contains(" @")){
		$output = $output.replace(" @", "@")
	}
	$output | Out-File -FilePath $_.FullName -Encoding ASCII
}
