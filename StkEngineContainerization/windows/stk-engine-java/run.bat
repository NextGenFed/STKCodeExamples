
docker run -it -v c:/Temp:C:/TempHost --name stk-java --env-file ..\configuration\licensing.env --rm ansys/stk/stk-engine-java:12.5.0-windowsserver-ltsc2022 cmd.exe
