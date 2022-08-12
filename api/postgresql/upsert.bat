@ECHO OFF
psql -d api -f upsert.sql -p 5432 --password
