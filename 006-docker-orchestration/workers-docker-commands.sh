# Connecting worker to manager, this command will given when setup manager node
docker swarm join --token $MANAGER_TOKEN $MANAGER_IP $MANAGER_PORT

# To see what replica of task is running
docker ps -a

# To leave swarm session
docker swarm leave
