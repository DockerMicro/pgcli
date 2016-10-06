#!/bin/bash
connection_url=$1

if [ -n "$connection_url" ]; then
    pgcli "$connection_url"
elif [ -n "$POSTGRES_PORT_5432_TCP_ADDR" ]; then
    /usr/bin/pgcli postgres://$POSTGRES_ENV_POSTGRES_USER:$POSTGRES_ENV_POSTGRES_PASSWORD@$POSTGRES_PORT_5432_TCP_ADDR:$POSTGRES_PORT_5432_TCP_PORT
else
    echo "Database connection url missing"
    echo "connection url format: postgres://USER:PASSWORD@HOST:PORT/DATABASE"
    echo ""
fi