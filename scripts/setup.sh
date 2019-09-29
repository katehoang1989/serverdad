#!/bin/bash

#Get end file dir
export ENVFILE=$SCRIPTS/.env

if [ -f "$DIR/.env" ]
then
	exit
else
	echo ""
	echo "No .env file found, would you like to initiate Serverdad? (y/n) "
        printf "> "
	read answer

	echo ""

	if [ "$answer" != "${answer#[Yy]}" ]
	then
		
		$SETUP/folders.sh

		$SETUP/variables.sh

		$SETUP/cronJobs.sh

		$SETUP/gdrive.sh

		$SETUP/finalizeEnv.sh

		$SETUP/systemLink.sh

		$SETUP/restore.sh

	else
		echo "Serverdad will not function without a .env file. Please provide your own or go though initilization"
	fi
fi

echo ""
echo ""
