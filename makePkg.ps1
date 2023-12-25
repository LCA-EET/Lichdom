$basePath = "Lichdom_EET"
$modPath = $basePath + "/lichdom" 
$archive = $basePath + ".zip"
$exePath = "setup-" + $basePath + ".exe"

Remove-Item -LiteralPath $modPath -Force -Recurse
Remove-Item $archive -Force
Remove-Item $exePath -Force

$folders = @(
'2da',
'baf',
'bam',
'bmp',
'cre',
'd',
'itm',
'spl',
'tra',
'wav'
)

foreach($folder in $folders){
	Copy-Item -Path $folder -Destination ($modPath + "/" + $folder) -Recurse
}

Copy-Item -Path ($basePath + ".tp2") -Destination $modPath 
Copy-Item -Path "license.md" -Destination $modPath
# Copy-Item -Path "ldconfig.cfg" -Destination $modPath

Copy-Item -Path "weidu.exe" -Destination ($basePath + "/" + $exePath)
Copy-Item -Path "Release Notes.md" -Destination ($basePath + "/Release Notes.md")

$7zipPath = "$env:ProgramFiles/7-Zip/7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
	$7zipPath = "F:/Program Files/7-Zip/7z.exe"
}

Set-Alias Start-SevenZip $7zipPath

$Source = "./" + $basePath + "/*"
$Target = "./" + $archive

Start-SevenZip a -mx=9 $Target $Source

Remove-Item -LiteralPath $basePath -Force -Recurse
Get-FileHash $archive -Algorithm SHA256 > SHA256.txt

Copy-Item -Path $archive -Destination ("\\192.168.1.88\smbuser\Home\Installers\" + $archive)