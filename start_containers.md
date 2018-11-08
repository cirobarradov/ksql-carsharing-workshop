Tech Stack
=================

Workshp containers
![Containers](/images/docker-compose.png)

1. Zookeeper server
```
docker-compose up -d zookeeper
```
2. Kafka broker
```
docker-compose up -d kafka
```
3. Schema registry
```
docker-compose up -d schema-registry
```
4. Kafka connect
```
docker-compose up -d kafka-connect
```
5. Mysql Database
```
docker-compose up -d mysql
```
6. Elasticsearch
```
docker-compose up -d elasticsearch
```
7. Kibana
```
docker-compose up -d kibana
```
8. KSQL Server
```
docker-compose up -d ksql-server
```
9. Debezium
```
docker-compose up -d connect-debezium
```
