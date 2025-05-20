#!/bin/bash

## Parse valid environment variables to configuration arguments.
args="[Deadline]"
for var in "${!dl_@}"; do
    echo "${var:3}" "${!var}"
    args+="\n${var:3}=${!var}"
done

## Generate config file from environment variables
mkdir -p /var/lib/Thinkbox/Deadline10/
echo -e $args > /var/lib/Thinkbox/Deadline10/deadline.ini

## Copy config to persistent
mkdir -p /deadline-server/client-config/
cp /var/lib/Thinkbox/Deadline10/deadline.ini /deadline-server/client-config/deadline.ini

## Run service
/opt/Thinkbox/Deadline10/bin/"$@"