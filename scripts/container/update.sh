#!/bin/bash

LOGFILE=$LOGDIR/application.log

if [ "$1" = "" ]
then
        echo "$(date) [ DOCKER - UPDATE ] All Containers Updated" >> $LOGFILE
else
        echo "$(date) [ DOCKER - UPDATE ] $1 Container Updated" >> $LOGFILE
fi


if [ "$1" = "plex" ]
then
    docker restart plex > /dev/null
    echo "Plex Updated"
else
    docker-compose -f $COMPOSEFILE pull $1
    docker-compose -f $COMPOSEFILE up -d $1
fi
