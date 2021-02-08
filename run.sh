#!/bin/bash

IMAGE=codeandrew/kali-rolling:10tools
docker build -t $IMAGE .
docker run -i -t $IMAGE /bin/bash
