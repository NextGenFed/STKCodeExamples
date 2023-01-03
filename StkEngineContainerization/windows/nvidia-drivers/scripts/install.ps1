
# Unpack from EXE 
$zipFile = Get-ChildItem -Path c:/nvidia -Recurse '*.zip' | Select-Object -ExpandProperty FullName
Write-Host $zipFile
Write-Host "Extracting NVidia setup files"
Expand-Archive -Path $zipFile[0] -DestinationPath c:/drivers
Remove-Item $zipFile[0];

Write-Host "Enabling DeviceInstall service"
#sc config PlugPlay start=demand
#sc config DeviceInstall start=demand
Set-Service -Name PlugPlay -StartupType Manual
Set-Service -Name DeviceInstall -StartupType Manual

Write-Host "Running silent install"
del C:\windows\inf\setupapi*.log
reg import EnableFullLogging.reg
$setup = Get-ChildItem -Path c:/drivers -Recurse 'setup.exe' | Select-Object -ExpandProperty FullName
Write-Host $setup
#Start-Process $setup -Wait -ArgumentList @('Display.Driver -s -clean -noreboot -noeula -log c:\logs')
#reg import DisableFullLogging.reg

#Remove-Item -Path C:\drivers\ -Force -Recurse