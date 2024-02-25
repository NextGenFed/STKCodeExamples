docker build --build-arg baseImage=ubuntu:22.04x -t ansys/stk/stk-engine-baseline:12.6.0-ubuntu22.04x -f Dockerfile.ubuntu .

REM docker build --build-arg baseImage=ubi8:8.8x -t ansys/stk/stk-engine-baseline:12.6.0-ubi8.8x -f Dockerfile .