FROM mcr.microsoft.com/windows/servercore:ltsc2022-amd64

# Install Chocolatey
RUN powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"

# Install postgresql via chocolatey
RUN refreshenv && \
    choco install postgresql -y && \
    refreshenv

WORKDIR "C:/Program Files/PostgreSQL/17"
# copy postgis binaries into PostgreSQL/17 directory
COPY binaries/postgis/ .

WORKDIR C:/