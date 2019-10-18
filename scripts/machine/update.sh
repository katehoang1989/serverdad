#!/bin/bash

LOGFILE=$LOGDIR/machine.log

echo "<*********************************>" >> $LOGFILE
echo "System Update: " >> $LOGFILE
date >> $LOGFILE
echo "<*********************************>" >> $LOGFILE

sudo apt update

sudo apt upgrade -y
