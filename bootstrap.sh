#!/usr/bin/env bash

run="run"
stop="stop"
restart="restart"

param1=$1

if [ $param1 = $run ]
then
    echo --------------------------------
    echo bootstrap is starting dependency
    echo --------------------------------
    cd ./docker
    sh run.sh
elif [ $param1 = $stop ]
then
    echo ---------------------
    echo bootstrap is stopping
    echo ---------------------
    cd ./docker
    docker-compose down
elif [ $param1 = $restart ]
then
    echo -----------------------
    echo bootstrap is restarting
    echo -----------------------
    cd ./docker
    docker-compose down
    sh run.sh
else
    echo ----------------
    echo unknown command!
    echo ----------------
fi