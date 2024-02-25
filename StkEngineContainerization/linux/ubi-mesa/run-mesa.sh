# note: save with Linux EOL chars
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /mnt/wslg:/mnt/wslg \
    -v /usr/lib/wsl:/usr/lib/wsl --device=/dev/dxg -e DISPLAY=$DISPLAY \
    -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
    --name ubi-mesa-test --rm ubi9:9.2m   /bin/bash

# commands to test with
# /usr/lib/wsl/lib/nvidia-smi
# glxinfo -B