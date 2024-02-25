REM docker build -t ubi8:8.8m  -f Dockerfile.mesa .

docker build --build-arg baseImage=ubi9:9.2x -t ubi9:9.2m  -f Dockerfile.mesa .