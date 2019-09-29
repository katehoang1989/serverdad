#!/bin/bash

services=( tautulli sickrage ombi couchpotato plex )

PLEXCACHE=./plex/Library/Application\ Support/Plex\ Media\ Server/Cache

function backup(){
	echo "Backing Up $1"
	if [ "$service" = "plex" ]
	then
		tar --exclude=./plex/Library/Application\ Support/Plex\ Media\ Server/Cache -czf $BACKUPDIR/plex.tar.gz ./plex
	else
		tar -czf $BACKUPDIR/$1.tar.gz ./$1 > /dev/null
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
