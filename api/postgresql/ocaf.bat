@ECHO OFF
psql -d api -f ocaf.sql -p 5432 --password
