@ECHO OFF
psql -d api -f upsert.sql -p 5433 --password
