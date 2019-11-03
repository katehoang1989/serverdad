#!/bin/bash
###########################
# Setup Cron Jobs
###########################
clear
echo ""
echo "Would you like to setup cron jobs(Reminder this will clear your crontab)?"
printf "> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then

	CRONFILE=./newcron

	touch $CRONFILE

	echo "#########################" >> ./newcron
	echo "# Crontab for Serverdad #" >> ./newcron
	echo "#########################" >> ./newcron

	answer=""
	while [ "$answer" != 5 ]
	do
		clear
		echo ""
		echo "Setup Cron Jobs"
		echo "---------------"
		echo ""
		echo "Pick the cronjobs you would like to install"
		echo "1. Sleep Job"
		echo "2. Update Job"
		echo "3. Backup Job"
		echo "4. Sync Job"
		echo "5. EXIT"
		printf ">> "
		read answer
		case $answer in
			1)
				echo "" >> ./newcron
				echo "####################################################" >> ./newcron
				echo "# Sleep Script" >> ./newcron
				echo "####################################################" >> ./newcron
				echo "0 0 * * 2-5 serverdad machine -s" >> ./newcron
				echo "0 1 * * 6,0,1 serverdad machine -s" >> ./newcron
			;;
			2)
				echo "" >> ./newcron
				echo "####################################################" >> ./newcron
				echo "# Update Script" >> ./newcron
				echo "####################################################" >> ./newcron
				echo "0 21 * * * serverdad machine -u" >> ./newcron
			;;
			3)
				echo "" >> ./newcron
				echo "####################################################" >> ./newcron
				echo "# Backup Script" >> ./newcron
				echo "####################################################" >> ./newcron
				echo "0 22 * * 0 serverdad backup" >> ./newcron
			;;
			4)
				echo "" >> ./newcron
				echo "####################################################" >> ./newcron
				echo "# Sync Script" >> ./newcron
				echo "####################################################" >> ./newcron
				echo "0 23 * * 1 serverdad sync" >> ./newcron
			;;
			5)
				echo "Finishing Cron Creation"
				sudo crontab ./newcron
				rm ./newcron
			;;
	done
fi