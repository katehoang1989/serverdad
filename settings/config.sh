#!/bin/bash

# APP DIR
export APPDIR=$DIR/apps
export SETTINGSDIR=$DIR/settings/

#Script DIRs
export SCRIPTS=$DIR/scripts
export CONTAINER=$SCRIPTS/container
export MACHINE=$SCRIPTS/machine
export SETUP=$SCRIPTS/setup

export DOCKERDIR=$SETUP/docker
export CRONDIR=$SETUP/cron

# Backup and Logs
export BACKUPDIR=$DIR/backups
export LOGDIR=$DIR/logs

# File Setup
export ENVFILE=$SCRIPTS/.env
export COMPOSEFILE=$SETTINGSDIR/docker-compose.yml
