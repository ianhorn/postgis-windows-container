FROM ianhorn/servercore:ltsc2022-python3.12.8 as base

RUN mkdir Temp

WORKDIR /Temp

RUN choco install postgresql -y && \
    curl -L -o postgis-bundle.zip https://download.osgeo.org/postgis/windows/pg17/postgis-bundle-pg17-3.5.2x64.zip && \
    powershell -Command "Expand-Archive postgis-bundle.zip -DestinationPath postgis-bundle"  && \
    del postgis-bundle.zip

# move postgis file
FROM base as builder

RUN robocopy C:\Temp\postgis-bundle "C:\Program Files\PosgresSQL\17" "*.*" && \
    rmdir /s /q C:\Temp\postgis-bundle