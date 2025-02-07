FROM mcr.microsoft.com/windows/nanoserver:ltsc2022 

COPY binaries/pg17 .

COPY binaries/pg17-postgis ./pgsql

ENV PATH=C:/pgsql/bin;%PATH%