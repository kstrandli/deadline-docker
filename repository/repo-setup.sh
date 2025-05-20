#!/bin/bash

args=""

#if ! stat /repo/settings/repository.ini
if ! stat /repo/setup_completed.txt
then
    echo "installing deadline"
    for var in "${!dl_@}"; do
        echo "${var:3}" "${!var}"
        args+=" --${var:3} ${!var}"
    done
    echo "starting deadline repository setup..."
    ./DeadlineRepository-*-linux-x64-installer.run ${args}

    echo "deadline repository install complete"
    echo "The setup completed - $(date)" > /repo/setup_completed.txt

else
    echo "skipping deadline repository install"
fi

sleep 60s