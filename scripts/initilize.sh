#!/bin/bash

$SETUP/dockerCompose.sh

$SETUP/cronJobs.sh

$SETUP/gdrive.sh

$SETUP/systemLink.sh

$SETUP/restore.sh

clear
echo "Serverdad Initilized!"