#!/bin/bash

###########################
# Setup App Password
###########################
echo ""
echo "Application Password:"
echo "---------------------"
echo "Enter a password for your applications"
printf "> "
read -s pass

echo "#password" >> $ENVFILE
echo "TRANSMISSIONPASS='$pass'" >> $ENVFILE

###########################
# Move .env File
###########################

mv $ENVFILE $DIR

echo ""