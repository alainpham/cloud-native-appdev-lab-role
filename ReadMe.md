# Cloud Native AppDev Lab Role for Ansible


Install with plain old Docker runs for dev environments a set of essential components for modern cloud native appdev stack such as Grafana, Prometheus, Loki, Kafka, Activemq Artemis, Nexus, Portainer, Traefik.

Go to the following repo to get full example playbooks running this role : 

https://github.com/alainpham/local-lab

![cloudnativearch](https://github.com/alainpham/local-lab/raw/master/assets/architecture.png)

# Manual install test

## Grafana

```

docker run --rm -e GF_PLUGINS_ENABLE_ALPHA=true grafana/grafana-oss-dev:9.1.0-72380pre

```