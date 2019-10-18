#!/bin/bash

services=( tautulli sickrage ombi couchpotato plex )

PLEXCACHE=./plex/Library/Application\ Support/Plex\ Media\ Server/Cache

LOGFILE=$LOGDIR/backup.log

function backup(){
	echo "Backing Up $1"
	if [ "$service" = "plex" ]
	then
		sudo tar --exclude=./plex/Library/Application\ Support/Plex\ Media\ Server/Cache -czf $BACKUPDIR/plex.tar.gz ./plex

                echo "<*********************************>" >> $LOGFILE
                echo "Backup Of Plex Created: " >> $LOGFILE
                date >> $LOGFILE
                echo "<*********************************>" >> $LOGFILE
	else
		sudo tar -czf $BACKUPDIR/$1.tar.gz ./$1 > /dev/null

		echo "<*********************************>" >> $LOGFILE
		echo "Backup Of $1 Created: " >> $LOGFILE
		date >> $LOGFILE
		echo "<*********************************>" >> $LOGFILE
	fi
}

echo "Backing Up All Services"
echo "-----------------------"

cd $APPDIR

for service in "${services[@]}"
do
	backup $service
done

echo ""
