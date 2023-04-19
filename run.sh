#!/bin/bash
NAME=kali-container
IMAGE=codeandrew/kali-rolling:latest
KALI_DIR=$HOME/kali
mkdir -p $KALI_DIR
set -x

RUNNING_INSTANCE=`docker ps | grep $NAME`
if [ -z "$RUNNING_INSTANCE" ]
then
    echo "No Running Instance of $NAME"
    docker rm $NAME
    docker run -it --tty -v $KALI_DIR:/home -v /var/run.docker.sock:/var/run/docker.sock -p 4440-4449:4440-4449 --name $NAME $IMAGE 
else
    echo "Entering Existing Container"
    docker exec -it $NAME bash
fi
