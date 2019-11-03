#!/bin/bash

cd $SETTINGSDIR
docker-compose -f $COMPOSEFILE ps $1
