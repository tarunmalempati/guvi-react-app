# Stop all running containers
#docker stop $(docker ps -aq)

# Remove all containers
#docker rm $(docker ps -aq)

#remove previously built images
docker rmi -f $(docker images -aq)

#login to docker hub
docker login -u tarun8117 -p $PASSWORD

#pull the image from docker hub
docker pull tarun8117/guvi-react-app-prod:latest

# Start new container with the latest image
docker-compose up -d
