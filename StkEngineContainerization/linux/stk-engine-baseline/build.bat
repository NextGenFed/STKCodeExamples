REM docker build --build-arg baseImage=rockylinux:9 -t ansys/stk/stk-engine-baseline:12.6.0-rocky9 .

REM docker build -t ansys/stk/stk-engine-baseline:12.6.0-ubuntu22.04 -f Dockerfile.ubuntu .

docker build --build-arg baseImage=redhat/ubi8:8.8 -t ansys/stk/stk-engine-baseline:12.6.0-ubi8.8 -f Dockerfile .

REM docker build --build-arg baseImage=registry1.dso.mil/ironbank/redhat/ubi/ubi9:9.2 -t ansys/stk/stk-engine-baseline:12.6.0-ubi9 -f Dockerfile .