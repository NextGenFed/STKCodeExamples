ARG baseImage=mcr.microsoft.com/windows/server:ltsc2022
FROM $baseImage

COPY distributions scripts C:/nvidia/

WORKDIR C:/nvidia

#RUN icacls c:\Windows\System32\DriverStore /grant BUILTIN\Administrators:F
#RUN icacls c:\Windows\System32\DriverStore\FileRepository /grant BUILTIN\Administrators:F

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser;"]
RUN C:\nvidia\install.ps1

#RUN mkdir c:\Windows\System32\DriverStore\FileRepository\nvdmi.inf_amd64_18524371942b1cc3
#RUN icacls c:\Windows\System32\DriverStore\FileRepository\nvdmi.inf_amd64_18524371942b1cc3 /grant BUILTIN\Administrators:F
#RUN copy c:\drivers\nvdmi.inf_amd64_18524371942b1cc3\* c:\Windows\System32\DriverStore\FileRepository\nvdmi.inf_amd64_18524371942b1cc3

CMD ["graphicsCheck.bat"]