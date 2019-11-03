#!/bin/bash
################################################
#
#   Folder Setup
#
################################################

##########################
# Setup DIR's For Script #
##########################
USERDIR=$(eval echo ~$USER)

TRANSCODEDIR=$USERDIR/transcode
LOCALMEDIADIR=$USERDIR/local_media
MOVIEDIR=$LOCALMEDIADIR/movies
TVDIR=$LOCALMEDIADIR/tv_shows
DOWNLOADDIR=$LOCALMEDIADIR/downloads

#############
# Functions #
#############
function printToEnv(){
    echo $1 >> $ENVFILE
}

###################
# Create Env File #
###################
echo ""
echo "Setup Folders"
echo "------------"
echo "Would you like to setup your env file? (y/n)"
printf "> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then
    # Directories #
    #=============#
    echo ""
    echo "Checking Directories"
    echo "--------------------"

    printToEnv "#Directories"
    printToEnv "APPDIR=$APPDIR"

    ####################
    # Transcode Folder #
    ####################
    printf "Checking for Transcode Folder"
    if [ ! -d "$TRANSCODEDIR" ]
    then
        printf " - Creating Folder\n"
        mkdir $TRANSCODEDIR
    else
        printf " - Already Exists\n"
    fi
    echo ""
    printToEnv "TRANSCODEDIR=$TRANSCODEDIR"

    ######################
    # Local Media Folder #
    ######################
    printf "Checking for Local Media Folder"
    if [ ! -d "$LOCALMEDIADIR" ]
    then
        printf " - Creating Folder\n"
        mkdir $LOCALMEDIADIR
    else
        printf " - Already Exists\n"
    fi
    echo ""
    printToEnv "LOCALMEDIADIR=$LOCALMEDIADIR"
    #################
    # Movies Folder #
    #################
    printf "Checking for Movies Folder"
    if [ ! -d "$MOVIEDIR" ]
    then
        printf " - Creating Folder\n"
        mkdir $MOVIEDIR
    else
        printf " - Already Exists\n"
    fi
    echo ""
    printToEnv "MOVIEDIR=$MOVIEDIR"

    ###################
    # TV Shows Folder #
    ###################
    printf "Checking for TV Shows Folder"
    if [ ! -d "$TVDIR" ]
    then
        printf " - Creating Folder\n"
        mkdir $TVDIR
    else
            printf " - Already Exists\n"
    fi
    echo ""
    printToEnv "TVDIR=$TVDIR"

    ####################
    # Downloads Folder #
    ####################
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
    printToEnv "DOWNLOADDIR=$DOWNLOADDIR"

    printToEnv ""

    # Variables #
    #===========#
    echo ""
    echo "Adding other variables"
    echo "----------------------"

    #Add user id's
    printToEnv "#User ID's"
    printToEnv "PUID=$(id -u)"
    printToEnv "PGID=$(id -u)"
    printToEnv ""

    #Add Timezone
    printToEnv "#Timezone"
    printToEnv "TZ=America/Denver"
    printToEnv ""

    #Add Container Ports
    #Container Ports
    printToEnv "TRANSMISSIONCPORT=8080"
    printToEnv "SONARRCPORT=8989"
    printToEnv "RADARRCPORT=7878"
    printToEnv "TAUTULLICPORT=8181"
    printToEnv "OMBICPORT=3579"
    printToEnv "ORGANIZRCPORT=80"
    printToEnv "JACKETTCPORT=9117"
    printToEnv ""
    
    #Host Ports
    printToEnv "TRANSMISSIONHPORT=8080"
    printToEnv "SONARRHPORT=8081"
    printToEnv "RADARRHPORT=8082"
    printToEnv "TAUTULLIHPORT=8083"
    printToEnv "OMBIHPORT=8084"
    printToEnv "ORGANIZRHPORT=8085"
    printToEnv "JACKETTHPORT=8086"
    printToEnv ""

    # Setup App Password #
    #====================#
    echo ""
    echo "Application Password:"
    echo "---------------------"
    echo "Enter a password for your applications"
    printf "> "
    read -s pass

    echo "#password" >> $ENVFILE
    echo "TRANSMISSIONPASS='$pass'" >> $ENVFILE

    # Move .env File #
    #================#
    mv $ENVFILE $SETTINGSDIR

    echo ""
else
	echo "Serverdad will not function without a .env file. Please provide your own or go though initilization"
fi
