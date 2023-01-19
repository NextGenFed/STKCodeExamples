docker run -it -v c:/Temp:C:/TempHost --name stk-eoir --env-file ..\configuration\licensing.env --rm ansys/stk/stk-engine-eoir:12.5.0-windowsserver-ltsc2022 cmd.exe
REM docker run -it -v c:/Temp:C:/TempHost --name stk-eoir --env-file ..\configuration\licensing.env --rm ansys/stk/stk-engine-eoir:12.5.0-server2022-ogc cmd.exe
