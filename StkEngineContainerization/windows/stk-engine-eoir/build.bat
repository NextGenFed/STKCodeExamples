REM docker build -t ansys/stk/stk-engine-eoir:12.5.0-windowsserver-ltsc2022 .

docker build --build-arg baseImage=ansys/stk/stk-engine-baseline:12.5.0-server2022-ogc -t ansys/stk/stk-engine-eoir:12.5.0-server2022-ogc .
