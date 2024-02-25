REM docker build --build-arg baseImage=ubuntu:22.04m -t ansys/stk/stk-engine-baseline:12.6.0-ubuntu22.04m -f Dockerfile.ubuntu .

REM docker build --build-arg baseImage=ubi8:8.8m -t ansys/stk/stk-engine-baseline:12.6.0-ubi8.8m -f Dockerfile .

REM docker build --build-arg baseImage=ubi9:9.2m -t ansys/stk/stk-engine-baseline:12.6.0-ubi9.2m -f Dockerfile .

REM docker build --build-arg baseImage=ubi9:9.2m -t ansys/stk/stk-engine-baseline:12.8.0-ubi9.2m -f Dockerfile .

docker build --build-arg baseImage=ubuntu:22.04m -t ansys/stk/stk-engine-baseline:12.8.0-ubuntu22.04m -f Dockerfile.ubuntu .
