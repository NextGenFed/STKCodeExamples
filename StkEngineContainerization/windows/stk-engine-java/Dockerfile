# By default, start from the base STK Engine image
ARG baseImage=ansys/stk/stk-engine-baseline:12.5.0-windowsserver-ltsc2022
FROM ${baseImage}

WORKDIR "C:/"
USER ContainerAdministrator

# From https://github.com/adoptium/containers/blob/main/11/jdk/windows/windowsservercore-ltsc2022/Dockerfile.releases.full

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ENV JAVA_VERSION jdk-11.0.17+8

RUN Write-Host ('Downloading https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.17%2B8/OpenJDK11U-jdk_x64_windows_hotspot_11.0.17_8.msi ...'); \
    curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.17%2B8/OpenJDK11U-jdk_x64_windows_hotspot_11.0.17_8.msi ; \
    Write-Host ('Verifying sha256 (9b74536f2475b67e53c83ecf41f80ac9f1ba29cef91c6e261e10d1223da42d69) ...'); \
    if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '9b74536f2475b67e53c83ecf41f80ac9f1ba29cef91c6e261e10d1223da42d69') { \
        Write-Host 'FAILED!'; \
        exit 1; \
    }; \
    \
    New-Item -ItemType Directory -Path C:\temp | Out-Null; \
    \
    Write-Host 'Installing using MSI ...'; \
    $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log', \
    '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-11' -Wait -Passthru; \
    $proc.WaitForExit() ; \
    if ($proc.ExitCode -ne 0) { \
        Write-Host 'FAILED installing MSI!' ; \
        exit 1; \
    }; \
    \
    Remove-Item -Path C:\temp -Recurse | Out-Null; \
    Write-Host 'Removing openjdk.msi ...'; \
    Remove-Item openjdk.msi -Force

RUN Write-Host 'Verifying install ...'; \
    Write-Host 'javac --version'; javac --version; \
    Write-Host 'java --version'; java --version; \
    \
    Write-Host 'Complete.'

RUN Write-Host ('Downloading apache-ant ZIP ...'); \
    curl.exe -LfsSo apache-ant-1.9.16-bin.zip https://dlcdn.apache.org//ant/binaries/apache-ant-1.9.16-bin.zip ; \
    Write-Host ('Installing apache-ant ...'); \
    Expand-Archive apache-ant-1.9.16-bin.zip -DestinationPath C:\; \
    Set-Item -Path env:ANT_HOME -Value 'C:\apache-ant-1.9.16'; \
    [Environment]::SetEnvironmentVariable('ANT_HOME','C:\apache-ant-1.9.16', 'Machine'); \
    Set-Item -Path env:Path -Value ($env:PATH + ';C:\apache-ant-1.9.16\bin'); \
    [Environment]::SetEnvironmentVariable('PATH', $env:PATH + ';C:\apache-ant-1.9.16\bin', 'Machine'); \
    Write-Host ('Removing  apache-ant ZIP ...'); \
    Remove-Item apache-ant-1.9.16-bin.zip -Force

RUN Write-Host 'Verifying install ...'; \
    Write-Host 'ant -version'; ant -version; \
    \
    Write-Host 'Complete.'

USER ContainerUser

CMD ["jshell"]