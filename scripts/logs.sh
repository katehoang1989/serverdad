#!/bin/bash

if [ "$1" = "-a" ]
then
	shift
	if [ "$1" = "" ]
	then
        	cat $LOGDIR/application.log
	else
        	cat $LOGDIR/$1.log
	fi
else
	if [ "$1" = "" ]
	then
	        tail -n 25 $LOGDIR/application.log
	else
	        tail -n 25 $LOGDIR/$1.log
	fi
fi
