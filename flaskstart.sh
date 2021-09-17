#!/bin/bash
sudo docker-compose down
sudo docker rm $(sudo docker ps -a -f status=exited -q)
sudo docker image prune -a
sudo docker-compose up --build -d

