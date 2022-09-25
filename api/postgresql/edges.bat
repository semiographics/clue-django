@ECHO OFF
psql -d api -f edges.sql -p 5432 --password
