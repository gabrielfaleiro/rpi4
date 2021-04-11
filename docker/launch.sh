sudo docker swarm init
sudo docker stack deploy -c docker-compose_rbpi4_v2.yml --resolve-image "always" homeautomation

