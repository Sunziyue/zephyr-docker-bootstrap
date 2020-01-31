#!/bin/bash

docker pull mysql:latest 
docker pull zookeeper:latest 

docker-compose up -d --force-recreate