#!/bin/bash

source .env

function localtunnel {
        lt -s $LT_SUBDOMAIN --port 3000
}

until localtunnel; do
        echo "localtunnel server crashed"
        sleep 2
done
