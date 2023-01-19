Write-Host "Installing STK EOIR"

# Unpack STK EOIR 
$zipFile = Get-ChildItem -Path c:/dist -Recurse '*.zip' | Select-Object -ExpandProperty FullName
Expand-Archive -Path $zipFIle -DestinationPath c:/dist
Remove-Item $zipFile;

# Find multple setup files
$setup = Get-ChildItem -Path C:/dist -Recurse 'setup.exe' | Select-Object -ExpandProperty FullName
Write-Host $setup

# Install STK EOIR 
Start-Process $setup[0] -Wait -ArgumentList @('/S', '/V"/qn /L*v C:\dist\install.log AgreeToLicense=Yes"')

# Install MODTRAN Data 
Start-Process $setup[1] -Wait -ArgumentList @('/S', '/V"/qn /L*v C:\dist\install.log AgreeToLicense=Yes"')

# install MaterialMaps
$dataFile = Get-ChildItem -Path C:/dist -Recurse 'earthHiRes.zip' | Select-Object -ExpandProperty FullName
$mapPath = "C:/Program Files/AGI/STK 12/EOIR_Databases/MaterialMaps"
New-Item -ItemType Directory -Force -Path $mapPath | Out-Null
Expand-Archive -Path $dataFile -DestinationPath $mapPath

Remove-Item -Path C:/dist -Force -Recurse
