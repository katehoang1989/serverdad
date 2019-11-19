#!/bin/bash
###########################
# Setup Cron Jobs
###########################
echo "[*] Setting up cronjobs"
echo ""
touch ./newcron

echo   "  [-] Would you like to setup the Sleep Cron Job?"
printf "      (Y/n) >> "
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
     cat $CRONDIR/sleepCron >> ./newcron
     echo ""
     echo "  [*] Sleep Job Installed"
fi

echo   "  [-] Would you like to setup the Update Cron Job?"
printf "      (Y/n) >> "
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
     cat $CRONDIR/updateCron >> ./newcron
     echo ""
     echo "  [*] Update Job Installed"
fi

echo   "  [-] Would you like to setup the Backup Cron Job?"
printf "      (Y/n) >> "
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
     cat $CRONDIR/backupCron >> ./newcron
     echo ""
     echo "  [*] Backup Job Installed"
fi

echo   "  [-] Would you like to setup the Sync Cron Job?"
printf "      (Y/n) >> "
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
     cat $CRONDIR/syncCron >> ./newcron
     echo ""
     echo "  [*] Sync Job Installed"
fi

echo "[*] Replacing old cron with new file"
sudo crontab ./newcron
echo "[*] Success"
rm ./newcron
