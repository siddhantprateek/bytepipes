## To connect Jenkins with Prometheus

```bash
docker network create jenkins-prometheus-bridge

docker network connect jenkins-prometheus-bridge <jenkins_container_id_or_name>
docker network connect jenkins-prometheus-bridge <prometheus_container_id_or_name>
```
