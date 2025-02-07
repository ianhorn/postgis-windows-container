FROM mcr.microsoft.com/windows/nanoserver:ltsc2022 

# Copy postgresql binaries
COPY binaries/pgsql .

# Copy postgis binaries
COPY binaries/postgis352 ./pgsql

# add postgres executables to environment path
ENV PATH=C:/pgsql/bin;%PATH%

# # initialize db
RUN initdb -D C:/pgsql/data

CMD ["pg_ctl", "start", "-D", "C:/pgsql/data"]