# Последняя версия
ARG GARFANA_VERSION=latest

FROM grafana/grafana:${GARFANA_VERSION}

# Пример подготовки источника данных datasources.yaml
ADD grafana/etc/ /etc

# Пример подготовки источника дэшбордов dashboards.yaml
ADD grafana/dashboards/ /dashboards