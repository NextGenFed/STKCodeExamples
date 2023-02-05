REM docker build  -t ansys/stk/stk-engine-graphics:12.6.0-centos7 .

REM docker build  --build-arg baseImage=ansys/stk/stk-engine-baseline:12.6.0-rocky9 -t ansys/stk/stk-engine-graphics:12.6.0-rocky9 .

REM docker build -t ansys/stk/stk-engine-graphics:12.6.0-ubuntu22 -f Dockerfile.ubuntu .

docker build  --build-arg baseImage=ansys/stk/stk-engine-baseline:12.6.0-rocky8 -t ansys/stk/stk-engine-graphics:12.6.0-rocky8 .