#!/bin/bash

###########################
# Setup Cron Jobs
###########################
echo ""
echo "Setup Cron Jobs"
echo "---------------"
echo ""
echo "Would you like to setup cron jobs(Reminder this will clear your crontab)?"
printf "> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then
	touch ./newcron

	echo ""
	echo "Would you like to setup the sleep job? (y/n)"
	printf "> "
	read answer

	echo "#########################" >> ./newcron
	echo "# Crontab for Serverdad #" >> ./newcron
	echo "#########################" >> ./newcron

	if [ "$answer" != "${answer#[Yy]}" ]
	then
		#add to the crontab
		echo "" >> ./newcron
		echo "####################################################" >> ./newcron
		echo "# Sleep Script" >> ./newcron
		echo "####################################################" >> ./newcron
		echo "0 0 * * 2-5 /home/yatesab/serverdad/serverdad machine -s" >> ./newcron
		echo "0 1 * * 6,0,1 /home/yatesab/serverdad/serverdad machine -s" >> ./newcron

		echo "  - Sleep job added to crontab!"
	fi

	echo ""
	echo "Would you like to setup the update job? (y/n)"
	printf "> "
	read answer

	if [ "$answer" != "${answer#[Yy]}" ]
	then
		#add to the crontab
		echo "" >> ./newcron
		echo "####################################################" >> ./newcron
		echo "# Update Script" >> ./newcron
		echo "####################################################" >> ./newcron
		echo "0 21 * * * /home/yatesab/serverdad/serverdad machine -u" >> ./newcron

		echo "  - Update job added to crontab!"
	fi

	echo ""
	echo "Would you like to setup the backup job? (y/n)"
	printf "> "
	read answer

	if [ "$answer" != "${answer#[Yy]}" ]
	then
		#add to the crontab
		echo "" >> ./newcron
		echo "####################################################" >> ./newcron
		echo "# Backup Script" >> ./newcron
		echo "####################################################" >> ./newcron
		echo "0 22 * * 0 /home/yatesab/serverdad/serverdad backup" >> ./newcron

		echo "  - Backup job added to crontab!"
	fi

	echo ""
	echo "Would you like to setup the Sync job? (y/n)"
	printf "> "
	read answer

	if [ "$answer" != "${answer#[Yy]}" ]
	then
		#add to the crontab
		echo "" >> ./newcron
		echo "####################################################" >> ./newcron
		echo "# Sync Script" >> ./newcron
		echo "####################################################" >> ./newcron
		echo "0 0 * * 1 /home/yatesab/serverdad/serverdad sync" >> ./newcron

		echo "  - Sync job added to crontab!"
	fi

	sudo crontab ./newcron
	rm ./newcron
fi
