#!/bin/bash

LOGFILE=$LOGDIR/container.log

echo "<*********************************>" >> $LOGFILE
if [ "$1" = "" ]
then
        echo "Containers Updated: " >> $LOGFILE
else
        echo "Container $1 Updated: " >> $LOGFILE
fi
date >> $LOGFILE
echo "<*********************************>" >> $LOGFILE


if [ "$1" = "plex" ]
then
    docker restart plex > /dev/null
    echo "Plex Updated"
else
    docker-compose -f $COMPOSEFILE pull $1
    docker-compose -f $COMPOSEFILE up -d $1
fi
