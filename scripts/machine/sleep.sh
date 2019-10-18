#!/bin/bash

LOGFILE=$LOGDIR/machine.log

echo "<*********************************>" >> $LOGFILE
echo "System Sleep: " >> $LOGFILE
date >> $LOGFILE
echo "<*********************************>" >> $LOGFILE

sudo systemctl suspend
