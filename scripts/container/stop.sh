#!/bin/bash

LOGFILE=$LOGDIR/container.log

echo "<*********************************>" >> $LOGFILE
if [ "$1" = "" ]
then
	echo "Containers Stopped: " >> $LOGFILE
else
	echo "Container $1 Stopped: " >> $LOGFILE
fi
date >> $LOGFILE
echo "<*********************************>" >> $LOGFILE

docker-compose -f $COMPOSEFILE stop $1
docker-compose -f $COMPOSEFILE rm $1
