REM docker build -t ansys/stk/stk-engine-baseline:12.5.0-windowsservercore-ltsc2022 --build-arg agreeToLicense=yes --build-arg baseImage=mcr.microsoft.com/windows/servercore:ltsc2022 .
REM docker build -t ansys/stk/stk-engine-baseline:12.5.0-windowsserver-ltsc2022 --build-arg agreeToLicense=yes --build-arg baseImage=mcr.microsoft.com/windows/server:ltsc2022 .
REM docker build -t ansys/stk/stk-engine-baseline:12.5.0-server2022-ogc --build-arg agreeToLicense=yes --build-arg baseImage=ansys/stk/opengl-compat:windowsserver-ltsc2022 .
docker build -t ansys/stk/stk-engine-baseline:12.6.0-server2022-ogc --build-arg agreeToLicense=yes --build-arg baseImage=ansys/stk/opengl-compat:windowsserver-ltsc2022 .
