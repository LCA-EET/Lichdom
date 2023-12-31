$forArchival = "Install_LichdomEET"
$modName = "Lichdom_EET"
$archive = $forArchival  + ".zip"
$exeName = "setup-" + $modName + ".exe"

Remove-Item -LiteralPath $forArchival  -Force -Recurse
Remove-Item $archive -Force
Remove-Item $exeName -Force

$folders = @(
'2da',
'baf',
'bam',
'bmp',
'compat',
'cre',
'd',
'itm',
'spl',
'tra',
'wav'
)

foreach($folder in $folders){
	Copy-Item -Path ($folder) -Destination ($forArchival  + "/"  + $modName + "/" + $folder) -Recurse
}

Copy-Item -Path ("weidu.exe") -Destination ($forArchival  + "/" + $exeName)

Copy-Item -Path ($modName + ".tp2") -Destination ($forArchival + "/" + $modName)

Copy-Item -Path ("license.md") -Destination ($forArchival + "/"  )

Copy-Item -Path ("Release Notes.md") -Destination ($forArchival + "/Lichdom Release Notes.md"  )

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
