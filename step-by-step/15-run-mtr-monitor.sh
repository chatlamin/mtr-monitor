#!/bin/bash

mkdir -p /home/docker/containers/mtr-monitor/
cd ../
cp ./mtr-monitor/mtr-monitor.sh /home/docker/containers/mtr-monitor/
cp ./mtr-monitor/save_data.py /home/docker/containers/mtr-monitor/

docker run \
        --name mtr-monitor \
        --detach \
        --net mtr-monitor-net \
        --volume /etc/localtime:/etc/localtime:ro \
        --volume /home/docker/containers/mtr-monitor:/mtr-monitor \
        chatlamin/mtr-monitor:latest

docker logs --follow mtr-monitor