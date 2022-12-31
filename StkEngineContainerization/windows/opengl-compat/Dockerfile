ARG baseImage=mcr.microsoft.com/windows/server:ltsc2022
FROM $baseImage

COPY distributions scripts C:/dist/

WORKDIR C:/dist

CMD ["graphicsCheck.bat"]