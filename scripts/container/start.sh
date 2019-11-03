#!/bin/bash

LOGFILE=$LOGDIR/application.log

if [ "$1" = "" ]
then
        echo "$(date) [ DOCKER - START ] All Containers Started" >> $LOGFILE
else
        echo "$(date) [ DOCKER - START ] $1 Container Started" >> $LOGFILE
fi

cd $SETTINGSDIR
docker-compose -f $COMPOSEFILE up -d $1
