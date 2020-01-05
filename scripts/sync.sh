#!/bin/bash

LOGFILE=$LOGDIR/application.log

cp -R $DIR/backups $LOCALMEDIADIR/backup/serverdadBackups

echo "$(date) [ BACKUP - SYNC ] Backup Files Synced" >> $LOGFILE
