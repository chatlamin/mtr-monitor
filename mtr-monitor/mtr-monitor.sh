#!/bin/bash

N_OF_PACKETS=5
INTERVAL=10
MTR_HOSTS=("8.8.8.8" "twitch.tv" "77.88.8.8" "zencom.ru" "ya.ru" "vk.com" "youtube.com" "ivi.ru")
INFLUXDB_HOST="influxdb"
INFLUXDB_PORT=8086

# END OF CONFIG

function monitor_mtr() {
  for MTR_HOST in ${MTR_HOSTS[@]} ; do
    ( mtr --report --json --report-cycles $N_OF_PACKETS $MTR_HOST | ./save_data.py --host $INFLUXDB_HOST --port $INFLUXDB_PORT ) &
  done
}

while true; do
    monitor_mtr
    sleep $INTERVAL
done