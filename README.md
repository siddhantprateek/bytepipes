# Bytepipes

![Banner](./assets/banner.png)

## Tools

- `Grafana`
- `Jenkins`
- `Prometheus - BlackBox Exporter`
- `Prometheus - Node Exporter`



## Setting up work environment

- Setting up environment using `docker compose`
```bash
docker compose -f docker-compose.monitoring.yml up -d

# If Jenkins is running
docker network connect jenkins <prometheus-container-id>
# jenkins: is network where jenkins is running
```  

## Prometheus Monitoring

![](./assets/prometheus.jpeg)

## Jenkins Performance and Health Dashboard

![](./assets/grafana.jpeg)

### Author

[Siddhant Prateek Mahanayak](https://github.com/siddhantprateek)