#!/bin/bash

if [ "$1" = "plex" ]
then
    docker restart plex > /dev/null
    echo "Plex Updated"
else
    docker-compose -f $COMPOSEFILE pull $1
    docker-compose -f $COMPOSEFILE up -d $1
fi