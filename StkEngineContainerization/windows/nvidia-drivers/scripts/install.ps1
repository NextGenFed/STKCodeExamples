
# Unpack from EXE 
Write-Host "Extracting NVidia setup files"
$zipFile = Get-ChildItem -Path c:/nvidia -Recurse '*.zip' | Select-Object -ExpandProperty FullName
Write-Host $zipFile
Expand-Archive -Path $zipFile -DestinationPath c:/drivers
Remove-Item $zipFile;

Write-Host "Installing NVidia drivers"
$setup = Get-ChildItem -Path c:/drivers -Recurse 'setup.exe' | Select-Object -ExpandProperty FullName
Write-Host $setup
Start-Process $setup -Wait -ArgumentList @('-s Display.Driver')

Remove-Item -Path C:\drivers\ -Force -Recurse