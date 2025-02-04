FROM ianhorn/servercore:ltsc2022-python3.12.8 as base

RUN mkdir /app

COPY . /app

FROM ugorsahin/postgis:16.5

RUN pg_restore -U sde -h localhost -d postgis C:\app\backup.dump