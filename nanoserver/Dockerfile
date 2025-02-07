FROM mcr.microsoft.com/windows/nanoserver:ltsc2022 

# Copy postgresql binaries
COPY binaries/pg17 .

# Copy postgis binaries
COPY binaries/pg17-postgis ./pgsql

ENV PATH=C:/pgsql/bin;%PATH%

RUN initdb -D C:/pgsql/data

CMD ["pg_ctl", "start", "-D", "C:/pgsql/data"]