# Stop all running containers
#docker stop $(docker ps -aq)

# Remove all containers
#docker rm $(docker ps -aq)

#delete previously built images
docker rmi -f $(docker images -aq)

#pull the image from docker hub
docker login -u tarun8117 -p dckr_pat_GyI9w66zsRUPxw2DENj2REmFHEM
docker pull tarun8117/guvi-react-app-dev:latest

# Start new container with the latest image
docker-compose up -d
