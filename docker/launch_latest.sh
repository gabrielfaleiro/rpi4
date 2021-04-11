sudo docker swarm init
sudo docker stack deploy -c docker-compose_rbpi4_latest.yml --resolve-image "always" homeautomation

