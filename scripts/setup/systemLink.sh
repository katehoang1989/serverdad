#!/bin/bash

#Get bin folder
BIN=/usr/local/bin/serverdad
#Get sbin folder
SBIN=/usr/local/sbin/serverdad

###########################
# Setting up system link
###########################
if [ ! -f $DIR/appLink ]
then
    rm $DIR/appLink
fi

echo "cd $DIR" >> $DIR/appLink
echo "./serverdad" >> $DIR/appLink

if [ -f $BIN ]
then
    rm $BIN
fi

ln -s $DIR/appLink $BIN

if [ -f $SBIN ]
then
    rm $SBIN
fi

ln -s $DIR/appLink $SBIN