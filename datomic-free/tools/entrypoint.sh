#!/bin/sh

sed "/host=0.0.0.0/a alt-host=$(ip route | awk 'NR==1 {print $3}')" -i transactor.properties

if [ ! -z "$1" ]; then
    exec bin/transactor transactor.properties
else 
    exec "$@"
fi