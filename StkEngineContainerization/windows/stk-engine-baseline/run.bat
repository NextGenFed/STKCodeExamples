REM docker run -it --name stk-baseline --env-file ..\configuration\licensing.env --rm ansys/stk/stk-engine-baseline:12.5.0-windowsservercore-ltsc2022 cmd.exe

REM docker run -it --name stk-baseline --env-file ..\configuration\licensing.env --rm ansys/stk/stk-engine-baseline:12.5.0-windowsserver-ltsc2022 cmd.exe

docker run -it -v c:/Temp:C:/TempHost --name stk-baseline --env-file ..\configuration\licensing.env --rm ansys/stk/stk-engine-baseline:12.5.0-windowsserver-ltsc2022 cmd.exe


REM docker run -it --name stk-baseline --env-file ..\configuration\licensing.env --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 --rm ansys/stk/stk-engine-baseline:12.5.0-windowsserver-ltsc2022 cmd.exe

REM docker run -it --name stk-baseline --env-file ..\configuration\licensing.env --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 --rm ansys/stk/stk-engine-baseline:12.5.0-windows1809 cmd.exe
