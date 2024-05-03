#!/bin/bash

#delete previously built images
docker rmi -f $(docker images -aq)

#build the docker image
docker build -t react-app .
echo "Build script success"

#login to docker hub
#docker login -u tarun8117 -p dckr_pat_GyI9w66zsRUPxw2DENj2REmFHEM

#push the image to docker hub
#docker tag react-app:latest tarun8117/guvi-react-app-dev:latest
#docker push tarun8117/guvi-react-app-dev:latest
