REM docker build --build-arg baseImage=ansys/stk/stk-engine-baseline:12.6.0-ubuntu22.04x -t ansys/stk/stk-engine-python:12.6.0-ubuntu22.04x -f Dockerfile .

REM docker build --build-arg baseImage=ansys/stk/stk-engine-baseline:12.6.0-ubi9 -t ansys/stk/stk-engine-python:12.6.0-ubi9 -f Dockerfile.ubi9 .

docker build --build-arg baseImage=ansys/stk/stk-engine-baseline:12.6.0-ubi8.8x -t ansys/stk/stk-engine-python:12.6.0-ubi8.8x -f Dockerfile.ubi8 .