# note: save with Linux EOL char (LF)
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    --name ubi-x-test --rm ubi8:8.8x  /bin/bash

# commands to test with
# cat /etc/os-release
# xdpyinfo
# xclock