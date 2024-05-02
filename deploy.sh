#!/bin/bash

#name and version for images
IMAGE_NAME=react-app
IMAGE_VERSION=v1

# Tag the image with the Docker Hub repository name and version
docker tag $IMAGE_NAME:$IMAGE_VERSION tarun8117/prod:$IMAGE_VERSION
docker tag $IMAGE_NAME:$IMAGE_VERSION tarun8117/dev:$IMAGE_VERSION

# Push the image to Docker Hub
docker push tarun8117/prod:$IMAGE_VERSION
docker push tarun8117/dev:$IMAGE_VERSION
