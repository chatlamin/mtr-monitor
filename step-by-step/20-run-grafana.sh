#!/bin/bash
ID=$(id -u)

docker run \
    --name grafana \
    --user $ID \
    --detach \
    --net mtr-monitor-net \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    --volume /home/docker/containers/grafana/var/lib/grafana:/var/lib/grafana \
    --publish 3000:3000 \
    --publish 3306:3306 \
    chatlamin/grafana:latest

docker logs --follow grafana