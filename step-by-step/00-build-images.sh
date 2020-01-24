#!/bin/bash
cd ../
docker build -t chatlamin/mtr-monitor . -f mtr-monitor/Dockerfile
docker build -t chatlamin/grafana . -f grafana/Dockerfile
docker build -t chatlamin/influxdb . -f influxdb/Dockerfile
