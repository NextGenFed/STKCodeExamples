REM docker build  -t ansys/stk/stk-engine-graphics:12.4.0-centos7 .
REM docker build  --build-arg baseImage=ansys/stk/stk-engine-baseline:12.4.0-rocky8 -t ansys/stk/stk-engine-graphics:12.4.0-rocky8 .
REM docker build  --build-arg baseImage=ansys/stk/stk-engine-baseline:12.4.0-rocky9 -t ansys/stk/stk-engine-graphics:12.4.0-rocky9 .

docker build -t ansys/stk/stk-engine-graphics:12.4.0-ubuntu22 -f Dockerfile.ubuntu .