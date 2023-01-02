
REM docker run -it -v c:/Temp:C:/TempHost --name stk-java --env-file ..\configuration\licensing.env --rm ansys/stk/stk-engine-java:12.5.0-windowsserver-ltsc2022 cmd.exe

docker run -it -v c:/Temp:C:/TempHost --name stk-java-ogc --env-file ..\configuration\licensing.env --rm repo.nextgenfed.com/ngdocker/ansys/stk/stk-engine-java:12.5.0-server2022-ogc cmd.exe
