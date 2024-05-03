# Stop all running containers
sudo docker stop $(docker ps -aq)

# Remove all containers
sudo docker rm $(docker ps -aq)

# Start new container with the latest image
docker-compose up -d
