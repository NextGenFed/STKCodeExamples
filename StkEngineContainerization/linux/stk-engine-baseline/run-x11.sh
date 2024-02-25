# note: save with Linux EOL char (LF)
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    --env-file ../configuration/licensing.env --name stk-engine-x11 \
    --rm ansys/stk/stk-engine-baseline:12.8.0-ubi9.2x /bin/bash

# -- Test commands
# cat /etc/os-release
# bin/connectconsole -i  (will not crash)
# bin/connectconsole -i -g 
# > GetSTKVersion /
# > GetReport / OpenGL (blank)
# bin/connectconsole -i -n (no windows shown?)
