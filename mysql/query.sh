#!/bin/sh

if [ ! -f /docker-entrypoint-initdb.d/createdb.sql ]; then
    cp /docker-entrypoint-initdb.d/createdb.sql.example /docker-entrypoint-initdb.d/createdb.sql
    chmod -R 777 /docker-entrypoint-initdb.d/createdb.sql
fi