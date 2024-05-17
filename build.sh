#!/bin/bash

#delete previously built images
docker rmi -f $(docker images -aq)

#build the docker image
docker build -t react-app .
echo "Build script success"

#login to docker hub
docker login -u tarun8117 -p $PASSWORD

#push the image to docker hub
docker tag react-app:latest tarun8117/guvi-react-app-prod:latest
#docker push tarun8117/guvi-react-app-prod:latest  
