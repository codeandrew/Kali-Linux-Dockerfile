#!/bin/bash

VERSION=1.1.0
IMAGE=codeandrew/kali-rolling:${VERSION}

docker build -t $IMAGE .
docker run -it --tty \
-v /var/run.docker.sock:/var/run/docker.sock \
$IMAGE
