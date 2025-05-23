$forArchival = "Install_Lichdom"
$modName = "Lichdom"
$archive = $forArchival  + ".zip"
$exeName = "setup-" + $modName + ".exe"

Remove-Item -LiteralPath $forArchival  -Force -Recurse
Remove-Item $archive -Force
Remove-Item $exeName -Force

$folders = @(
'assistant',
'bg2',
'compat',
'lich',
'sod',
'temp',
'tob',
'tra'
)



foreach($folder in $folders){
	Copy-Item -Path ($folder) -Destination ($forArchival  + "/"  + $modName + "/" + $folder) -Recurse
}

Copy-Item -Path ("weidu.exe") -Destination ($forArchival  + "/" + $exeName)
Copy-Item -Path ("F:\BGModding - LCA\Game\00783\LCA\EE\functions.tph") -Destination ($forArchival  + "/" + $modName + "/functions.tph")
Copy-Item -Path ("defaults.tph") -Destination ($forArchival  + "/" + $modName + "/defaults.tph")

Copy-Item -Path ("F:\BGModding - LCA\Game\00783\LCA\EE\d_compactor.ps1") -Destination $PSScriptRoot

& $PSScriptRoot/d_compactor.ps1 -dPath $forArchival

Copy-Item -Path ($modName + ".tp2") -Destination ($forArchival + "/" + $modName)

Copy-Item -Path ("license.md") -Destination ($forArchival + "/"  )
Copy-Item -Path "Discord Server.url" -Destination ($forArchival + "/" + $modName + "/Discord Server.url")
Copy-Item -Path "Venmo.url" -Destination ($forArchival + "/" + $modName + "/Venmo.url")

Copy-Item -Path ("Lichdom Release Notes.url") -Destination ($forArchival + "/" + $modName + "/Release Notes.url"  )
Get-Date -Format "yyyy-MM-dd HH:mm K" > pkgdate.txt
Copy-Item -Path pkgdate.txt -Destination ($forArchival + "/" + $modName + "/pkgdate.txt")

$7zipPath = "$env:ProgramFiles/7-Zip/7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
	$7zipPath = "F:/Program Files/7-Zip/7z.exe"
}

Set-Alias Start-SevenZip $7zipPath

$Source = "./" + $forArchival + "/*"
$Target = "./" + $archive

Start-SevenZip a -mx=9 $Target $Source

Remove-Item -LiteralPath $forArchival -Force -Recurse
Get-FileHash $archive -Algorithm SHA256 > SHA256.txt

Copy-Item -Path $archive -Destination ("\\192.168.1.88\smbuser\Home\Installers\" + $archive)
