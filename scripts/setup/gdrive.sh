#!/bin/bash
###########################
# Gdrive Setup
###########################
echo ""
echo "Setup Gdrive"
echo "------------"
echo "Would you like to setup Gdrive now? (y/n)"
printf "> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then
    cp $SCRIPTS/gdrive-linux-arm64 $DIR/gdrive
    $DIR/gdrive -a
fi