# note: save with Linux EOL char (LF)
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /mnt/wslg:/mnt/wslg \
    -v /usr/lib/wsl:/usr/lib/wsl --device=/dev/dxg -e DISPLAY=$DISPLAY \
    -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
    --env-file ../configuration/licensing.env --name stk-engine-mesa \
    --rm ansys/stk/stk-engine-baseline:12.6.0-ubuntu22.04m /bin/bash

# -- Test commands
# cat /etc/os-release
# bin/connectconsole -i  (will not crash)
# bin/connectconsole -i -g 
# > GetSTKVersion /
# > GetReport / OpenGL (still blank??)
# bin/connectconsole -i -n (no windows shown??)