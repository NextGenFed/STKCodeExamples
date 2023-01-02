REM docker build -t repo.nextgenfed.com/ngdocker/ansys/stk/stk-engine-java:12.5.0-windowsserver-ltsc2022 .

docker build --build-arg baseImage=ansys/stk/stk-engine-baseline:12.5.0-server2022-ogc -t repo.nextgenfed.com/ngdocker/ansys/stk/stk-engine-java:12.5.0-server2022-ogc .

