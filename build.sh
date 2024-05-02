#!/bin/bash

#build the docker image
docker build -t react-app .
docker images 

#building docker container
docker-compose up -d
docker ps

echo "Container created successfully"
echo "Build script success"
