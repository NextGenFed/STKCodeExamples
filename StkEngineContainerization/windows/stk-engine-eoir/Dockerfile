ARG baseImage=ansys/stk/stk-engine-baseline:12.5.0-windowsserver-ltsc2022
FROM $baseImage

USER ContainerAdministrator

COPY distributions scripts C:/dist/

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser;"]
RUN C:\dist\install.ps1

USER ContainerUser

WORKDIR "C:/Program Files/AGI/STK 12/bin"

CMD echo 'STK Engine requires a host application to run.  Shutting down this container.'
