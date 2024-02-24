# note: save with Linux EOL chars
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    --name ubuntu-x-test --rm ubuntu:22.04x  /bin/bash