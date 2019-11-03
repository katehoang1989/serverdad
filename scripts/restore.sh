#!/bin/bash

LOGFILE=$LOGDIR/application.log

echo "$(date) [ BACKUP - RESTORE ] Backup Files Synced" >> $LOGFILE

$SETUP/restore.sh
