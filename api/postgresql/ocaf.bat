@ECHO OFF
psql -d api -f ocaf.sql -p 5433 --password
