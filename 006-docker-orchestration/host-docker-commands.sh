# To see ID's of each on docker-compose
docker ps

# After get ID this command will return the IP of container
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CONTAINER_ID
