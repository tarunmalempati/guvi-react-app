# Stop all running containers
#docker stop $(docker ps -aq)

# Remove all containers
#docker rm $(docker ps -aq)

# Start new container with the latest image
docker-compose up -d
