REM docker run -it --name opengl-test --rm ansys/stk/opengl-compat:windowsserver-ltsc2022

REM ##### with GPUs

docker run -it --name opengl-test-gpus --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 --rm ansys/stk/opengl-compat:windowsserver-ltsc2022 cmd.exe