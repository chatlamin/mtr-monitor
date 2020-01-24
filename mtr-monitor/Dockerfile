FROM alpine:3.7

RUN apk add --no-cache python3 bash mtr

RUN pip3 install influxdb

ADD mtr-monitor/mtr-monitor.sh /mtr-monitor/
ADD mtr-monitor/save_data.py /mtr-monitor/

WORKDIR /mtr-monitor/

CMD /mtr-monitor/mtr-monitor.sh