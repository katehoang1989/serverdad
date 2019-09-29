#!/bin/bash

services=( tautulli sickrage ombi couchpotato plex )

function restore(){
	echo "Restoring $1"
	if [ -d $APPDIR/$1 ]
	then
		rm -d -r $APPDIR/$1
	fi
	tar -xzf $BACKUPDIR/$1.tar.gz > /dev/null
}

echo ""
echo "Restore Data:"
echo "---------------------"
echo "Would you like to sync your app data from gdrive?"
printf "> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then
    $DIR/gdrive sync download 10sNGS3CI7JaQLkqHwPWwtkHiHtho7-hs $DIR/backups

	cd $APPDIR

	for service in "${services[@]}"
	do
		restore $service
	done
fi