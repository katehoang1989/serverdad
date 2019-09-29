#!/bin/bash

###########################
# Sync Data from cloud
###########################
echo ""
echo "Data Sync:"
echo "---------------------"
echo "Would you like to sync your app data from gdrive?"
printf "> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then
    $DIR/gdrive sync download 10sNGS3CI7JaQLkqHwPWwtkHiHtho7-hs $DIR/backups
    $SETUP/restore.sh
fi