#!/bin/bash

docker pull mysql:5.7.25
docker pull zookeeper:3.4.10 

docker-compose up -d --force-recreate