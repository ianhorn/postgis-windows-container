FROM sokigo/postgis-windows:15-3.4-2022

COPY . /app

ENV PGPASSWORD={postgres}

CMD ["cmd", "/c", "pg_restore -U sde -h localhost -d postgis C:\\app\\backup.dump"]