
# Unpack from EXE 
$zipFile = Get-ChildItem -Path c:/nvidia -Recurse '*.zip' | Select-Object -ExpandProperty FullName
Write-Host $zipFile
Write-Host "Extracting NVidia setup files"
Expand-Archive -Path $zipFile[0] -DestinationPath c:/drivers
Remove-Item $zipFile[0];
#Write-Host "Extracting NVidia driver files"
#Expand-Archive -Path $zipFile[1] -DestinationPath c:/drivers
#Remove-Item $zipFile[1];

sc config PlugPlay start= demand
sc config DeviceInstall start= demand
reg import EnableFullLogging.reg

Write-Host "Running silent install"
$setup = Get-ChildItem -Path c:/drivers -Recurse 'setup.exe' | Select-Object -ExpandProperty FullName
Write-Host $setup
Start-Process $setup -Wait -ArgumentList @('Display.Driver -s -clean -noreboot -noeula -log c:\logs')

#Remove-Item -Path C:\drivers\ -Force -Recurse