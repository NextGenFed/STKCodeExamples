REM --- Get video card information
wmic path win32_VideoController get /format:list

REM --- Check OpenGL drivers:
reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000 | find "Driver"

REM --- Get OpenGL version
wglinfo64.exe -B | find "OpenGL"
