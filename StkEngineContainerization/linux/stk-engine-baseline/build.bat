REM docker build --build-arg baseImage=centos:8 -t ansys/stk/stk-engine-baseline:12.4.0-centos8 .

docker build --build-arg baseImage=rockylinux:8.6 -t ansys/stk/stk-engine-baseline:12.6.0-rocky8 .

REM docker build --build-arg baseImage=rockylinux:9 -t ansys/stk/stk-engine-baseline:12.6.0-rocky9 .

REM docker build -t ansys/stk/stk-engine-baseline:12.6.0-ubuntu22 -f Dockerfile.ubuntu .