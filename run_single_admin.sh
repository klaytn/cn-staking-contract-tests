#!/bin/bash

docker pull klaytn/klaytn:latest
docker-compose up 1> docker.stdout 2> docker.stderr &

echo "Waiting until docker is setting up..."
sleep 5

node single_admin.js

echo "Removing docker resource..."
docker-compose down
