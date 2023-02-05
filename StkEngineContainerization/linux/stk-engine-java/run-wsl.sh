docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    --env-file ../configuration/licensing.env \
    -v /mnt/wslg:/mnt/wslg -v /usr/lib/wsl:/usr/lib/wsl --device=/dev/dxg --gpus all \
    --name stk-java --rm ansys/stk/stk-engine-java:12.6.0-rocky8 sh