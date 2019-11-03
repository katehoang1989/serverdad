#!/bin/bash

LOGFILE=$LOGDIR/application.log

echo "$(date) [ BACKUP - SYNC ] Backup Files Synced" >> $LOGFILE

$DIR/gdrive sync upload $DIR/backups 10sNGS3CI7JaQLkqHwPWwtkHiHtho7-hs
