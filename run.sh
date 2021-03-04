#!/bin/bash
NAME=kali-container
IMAGE=codeandrew/kali-rolling:latest
set -x

RUNNING_INSTANCE=`docker ps | grep $NAME`
if [ -z "$RUNNING_INSTANCE" ]
then
    echo "No Running Instance of $NAME"
    docker rm $NAME
    docker run -it --tty -v scripts:/tmp -v /var/run.docker.sock:/var/run/docker.sock -p 9990-9999:9990-9999 --name $NAME $IMAGE 
else
    echo "Entering Existing Container"
    docker exec -it $NAME bash
fi
