#!/bin/bash

docker-compose -f $COMPOSEFILE pull $1
docker-compose -f $COMPOSEFILE up -d $1
