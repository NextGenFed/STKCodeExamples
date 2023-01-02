ARG baseImage=mcr.microsoft.com/windows/server:ltsc2022
FROM $baseImage

COPY distributions scripts C:/nvidia/

WORKDIR C:/nvidia

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser;"]
RUN C:\nvidia\install.ps1

CMD ["graphicsCheck.bat"]