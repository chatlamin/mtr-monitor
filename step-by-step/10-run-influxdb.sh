#!/bin/bash
docker run \
        --name influxdb \
        --detach \
        --net mtr-monitor-net \
        --volume /etc/localtime:/etc/localtime:ro \
        --volume /home/docker/containers/influxdb:/var/lib/influxdb \
        --publish 8086:8086 \
        --publish 8083:8083 \
        chatlamin/influxdb:latest

docker logs --follow influxdb