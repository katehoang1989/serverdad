#!/bin/bash

LOGFILE=$LOGDIR/container.log

echo "<*********************************>" >> $LOGFILE
if [ "$1" = "" ]
then
        echo "Containers Started: " >> $LOGFILE
else
        echo "Container $1 Started: " >> $LOGFILE
fi
date >> $LOGFILE
echo "<*********************************>" >> $LOGFILE

docker-compose -f $COMPOSEFILE up -d $1
