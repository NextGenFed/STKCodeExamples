REM docker build -t ubi8:8.8x  -f Dockerfile.x11 .

docker build --build-arg baseImage=redhat/ubi9:9.2 -t ubi9:9.2x  -f Dockerfile.x11 .