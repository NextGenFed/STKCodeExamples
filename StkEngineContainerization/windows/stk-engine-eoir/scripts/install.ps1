Write-Host "Installing STK EOIR"

# Unpack STK EOIR 
$zipFile = Get-ChildItem -Path c:/dist -Recurse '*.zip' | Select-Object -ExpandProperty FullName
Expand-Archive -Path $zipFIle -DestinationPath c:/dist
Remove-Item $zipFile;

# Find multple setup files
$setup = Get-ChildItem -Path c:/dist -Recurse 'setup.exe' | Select-Object -ExpandProperty FullName
Write-Host $setup

# Install STK EOIR 
Start-Process $setup[0] -Wait -ArgumentList @('/S', '/V"/qn /L*v C:\dist\install.log AgreeToLicense=Yes"')

# Install MODTRAN Data 
Start-Process $setup[1] -Wait -ArgumentList @('/S', '/V"/qn /L*v C:\dist\install.log AgreeToLicense=Yes"')

Remove-Item -Path C:\dist\ -Force -Recurse
