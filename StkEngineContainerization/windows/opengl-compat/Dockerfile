ARG baseImage=mcr.microsoft.com/windows/server:ltsc2022
FROM $baseImage

COPY distributions scripts C:/opengl-compat/

WORKDIR C:/opengl-compat

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser;"]

# Install OpenGL Compatibility Pack for ContainerUser & ContainerAdministrator
USER ContainerUser
RUN add-appxpackage Microsoft.D3DMappingLayers_1.2211.5.0_x64.Appx
USER ContainerAdministrator
RUN add-appxpackage Microsoft.D3DMappingLayers_1.2211.5.0_x64.Appx

RUN rm *.Appx

CMD ["graphicsCheck.bat"]