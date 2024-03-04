docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    --env-file ../configuration/licensing.env \
    -v /mnt/wslg:/mnt/wslg -v /usr/lib/wsl:/usr/lib/wsl --device=/dev/dxg --gpus all \
    --name stk-java --rm ansys/stk/stk-engine-java:12.8.0-ubi9.2m sh


# testing
# cd /home/stk/CodeSamples/CustomApplications/Java/AWT_STK_X_NoGraphics
# /usr/local/ant/bin/ant run
# cd ../AWT_STK_X_Globe_Basic
# /usr/local/ant/bin/ant run
# cd ../AWT_STK_Graphics_Globe_HowTo

