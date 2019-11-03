#!/bin/bash

LOGFILE=$LOGDIR/application.log

if [ "$1" = "" ]
then
	echo "$(date) [ DOCKER - STOP ] All Containers Stopped & Removed" >> $LOGFILE
else
	echo "$(date) [ DOCKER - STOP ] $1 Container Stopped & Removed" >> $LOGFILE
fi

cd $SETTINGSDIR
docker-compose -f $COMPOSEFILE stop $1
docker-compose -f $COMPOSEFILE rm $1
