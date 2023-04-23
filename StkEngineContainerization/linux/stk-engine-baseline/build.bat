REM docker build --build-arg baseImage=centos:8 -t ansys/stk/stk-engine-baseline:12.4.0-centos8 .

REM docker build --build-arg baseImage=rockylinux:8.6 -t ansys/stk/stk-engine-baseline:12.6.0-rocky8 .

REM docker build --build-arg baseImage=rockylinux:9 -t ansys/stk/stk-engine-baseline:12.6.0-rocky9 .

REM docker build -t ansys/stk/stk-engine-baseline:12.6.0-ubuntu22 -f Dockerfile.ubuntu .

docker build --build-arg baseImage=ubuntu-mesa:20.04 --build-arg removeVO=true -t ansys/stk/stk-engine:12.6-ubuntu20-mesa -f Dockerfile.ubuntu .