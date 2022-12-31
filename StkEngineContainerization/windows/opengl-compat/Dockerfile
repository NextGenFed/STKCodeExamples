ARG baseImage=mcr.microsoft.com/windows/server:ltsc2022
FROM $baseImage

USER ContainerUser

COPY distributions scripts C:/opengl-compat/

WORKDIR C:/opengl-compat

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser;"]
RUN add-appxpackage Microsoft.D3DMappingLayers_1.2211.5.0_x64.Appx

RUN rm *.Appx

CMD ["graphicsCheck.bat"]