#!/bin/bash

LOGFILE=$LOGDIR/application.log

echo "$(date) [ SYSTEM - SLEEP ] Server Nightly Sleep Activated" >> $LOGFILE

sudo systemctl suspend
