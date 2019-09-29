#!/bin/bash
###########################
# Setup Cron Jobs
###########################
echo ""
echo "Setup Cron Jobs"
echo "---------------"
echo "Would you like to setup cron jobs?"
printf "> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then
	crontab -r
	echo ""
	echo "Would you like to setup the sleep job? (y/n)"
	printf "> "
	read answer

	if [ "$answer" != "${answer#[Yy]}" ]
	then
		#add to the crontab
		
		echo "Sleep job added to crontab!"
	fi

	echo "Would you like to setup the update job? (y/n)"
	printf "> "
	read answer

	if [ "$answer" != "${answer#[Yy]}" ]
	then
		#add to the crontab
		echo "Update job added to crontab!"
	fi
fi
