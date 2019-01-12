#!/usr/bin/env bash

sed "/host=0.0.0.0/a alt-host=${ALT_HOST:-127.0.0.1}" -i transactor.properties

if [ ! -z "$1" ]; then
    exec "$@"
else 
    bin/transactor transactor.properties
fi