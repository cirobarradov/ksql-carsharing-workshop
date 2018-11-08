Ksql Workshop
=================

KSQL workshop for Streaming special events detection of car sharing data
![Diagram](/images/ksql-workshop.jpg)

Requirements
------------
- Operative System: Ubuntu 16.04 / OS X
- [Docker](INSTALL.md)
- [Docker-Compose](INSTALL.md)

Steps
------------
- ##### Install software requirements
0. [Installation](INSTALL.md)
- ##### Launch workshop tech stack with docker-compose step by step:
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
- ##### Create database and tables :
```
docker exec -it $(docker-compose ps | grep mysql | awk '{print $1}') bash
mysql -u root -p <password> (3jtkZQGjV4DzM9q8)

CREATE USER `ksql`@`%` IDENTIFIED BY `3jtkZQGjV4DzM9q8`;
GRANT ALL PRIVILEGES ON zity.* TO `ksql`@`%`;
```
- ##### Configure and launch cars2kafka:
10. Set up config.json (take cookies from web) and launch cars2kafka container
```
docker-compose up -d cars2kafka
```
- ##### Set up debezium to be able to listen changes on mysql tables:

- ##### Create streams with ksql cli:



License
------------
The project is licensed under the [GNU General Public License v3.0](LICENSE)
