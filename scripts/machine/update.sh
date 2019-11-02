#!/bin/bash

LOGFILE=$LOGDIR/application.log

echo "$(date)[SYSTEM - UPDATE] System Updated" >> $LOGFILE

sudo apt update

sudo apt upgrade -y
