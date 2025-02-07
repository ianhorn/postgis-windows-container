FROM mcr.microsoft.com/windows/servercore:ltsc2022-amd64

# Install Chocolatey
RUN powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install postgresql via chocolatey
RUN refreshenv && \
    choco install postgresql && \
    refreshenv

WORKDIR "C:/Program Files/PostgreSQL/17"
# download postgis binaries and move to posgtresql directory
RUN powershell -Command "Invoke-WebRequest -Uri "https://download.osgeo.org/postgis/windows/pg17/postgis-bundle-pg17-3.5.2x64.zip -OutFile postgis.zip; `
    Expand-Archive -Path postgis.zip -DestinationPath 17" && \
    refreshenv

WORKDIR C:/