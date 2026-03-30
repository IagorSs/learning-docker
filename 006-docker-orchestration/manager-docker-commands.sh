# get DOCKER_IP by running inspect on container
# Start swarm with node as manager, this will return command to be running on workers
docker swarm init --advertise-addr $DOCKER_IP

# To check swarm nodes connected
docker node ls

# To create sample service with replicas
docker service create --name web-server -p 8080:80 --replicas 3 nginx:latest

# To see services running
docker service ls
docker service ps web-server

# To drain services for some worker
docker node update --availability drain $WORKER_HOSTNAME

# To remove some node ref of swarm session, the node need to leave itself before execute this
docker node rm $WORKER_HOSTNAME

# To scale some service
docker service scale web-server=6

# To do some update on service specs
docker service update --image nginx:alpine web-server

# To inspect service specs
docker service inspect --pretty web-server

# To remove service
docker service rm web-server