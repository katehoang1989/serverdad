#!/bin/bash

docker-compose -f $COMPOSEFILE stop $1
docker-compose -f $COMPOSEFILE rm $1
