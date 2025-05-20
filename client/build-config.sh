#!/bin/bash
export dl_MyVar="hello"
## Parse valid environment variables to configuration arguments.
args="[Deadline2]"
for var in "${!dl_@}"; do
    echo "${var:3}" "${!var}"
    args+="\n${var:3}=${!var}"
done

## Generate config file from environment variables
mkdir -p /var/lib/Thinkbox/Deadline10/
echo -e $args > /var/lib/Thinkbox/Deadline10/deadline.ini