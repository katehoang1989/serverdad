#!/bin/bash

# Get user DIR
USERDIR=$(eval echo ~$USER)

TRANSCODEDIR=$USERDIR/transcode
LOCALMEDIADIR=$USERDIR/local_media
MOVIEDIR=$LOCALMEDIADIR/movies
TVDIR=$LOCALMEDIADIR/tv_shows
DOWNLOADDIR=$LOCALMEDIADIR/downloads

###########################
# First setup folders
###########################

echo "Creating Directories"
echo "--------------------"

echo "#Directories" >> $ENVFILE

#App Folder
echo "APPDIR=$APPDIR" >> $ENVFILE

#Transcode Folder
printf "Checking for Transcode Folder"
if [ ! -d "$TRANSCODEDIR" ]
then
    printf " - Creating Folder\n"
    mkdir $TRANSCODEDIR
else
    printf " - Already Exists\n"
fi
echo ""
echo "TRANSCODEDIR=$TRANSCODEDIR" >> $ENVFILE


#Local Media Folder
########################################
printf "Checking for Local Media Folder"
        if [ ! -d "$LOCALMEDIADIR" ]
        then
    printf " - Creating Folder\n"
                mkdir $LOCALMEDIADIR
        else
                printf " - Already Exists\n"
fi
echo ""
echo "LOCALMEDIADIR=$LOCALMEDIADIR" >> $ENVFILE

#Movies Folder
########################################
printf "Checking for Movies Folder"
if [ ! -d "$MOVIEDIR" ]
then
    printf " - Creating Folder\n"
    mkdir $MOVIEDIR
else
    printf " - Already Exists\n"
fi
echo ""
echo "MOVIEDIR=$MOVIEDIR" >> $ENVFILE

#TV Shows Folder
########################################
printf "Checking for TV Shows Folder"
if [ ! -d "$TVDIR" ]
then
    printf " - Creating Folder\n"
    mkdir $TVDIR
else
        printf " - Already Exists\n"
fi
echo ""
echo "TVDIR=$TVDIR" >> $ENVFILE

#Downloads Folder
printf "Checking for Downloads Folder"
if [ ! -d "$DOWNLOADDIR" ]
then
    printf " - Creating Folders\n"
    mkdir $DOWNLOADDIR
    mkdir $DOWNLOADDIR/complete
    mkdir $DOWNLOADDIR/incomplete
else
    printf " - Already Exist\n"
fi
echo ""
echo "DOWNLOADDIR=$DOWNLOADDIR" >> $ENVFILE

echo "" >> $ENVFILE