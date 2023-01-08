
# Unpack from EXE 
$zipFile = Get-ChildItem -Path c:/nvidia -Recurse '*.zip' | Select-Object -ExpandProperty FullName
Write-Host $zipFile
Write-Host "Extracting NVidia setup files"
Expand-Archive -Path $zipFile -DestinationPath c:/drivers
Remove-Item $zipFile;

Write-Host "Enabling DeviceInstall service"
#sc config PlugPlay start=demand
#sc config DeviceInstall start=demand
Set-Service -Name PlugPlay -StartupType Manual
Set-Service -Name DeviceInstall -StartupType Manual

del C:\windows\inf\setupapi*.log
reg import EnableFullLogging.reg

Write-Host "Finding setup"
$setup = Get-ChildItem -Path c:/drivers -Recurse 'setup.exe' | Select-Object -ExpandProperty FullName
Write-Host $setup

# Do install at runtime
# Write-Host "Running silent install"
# Start-Process $setup -Wait -ArgumentList @('Display.Driver -s -clean -noreboot -noeula -log c:\logs')
# reg import DisableFullLogging.reg

#Remove-Item -Path C:\drivers\ -Force -Recurse