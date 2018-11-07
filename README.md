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
1. 
```
docker-compose up -d zookeeper
```
2. 
```
docker-compose up -d kafka
```
3. 
```
docker-compose up -d schema-registry
```
4. 
```
docker-compose up -d kafka-connect
```
5. 
```
docker-compose up -d mysql
```
6. 
```
docker-compose up -d elasticsearch
```
7. 
```
docker-compose up -d kibana
```
8. 
```
docker-compose up -d ksql-server
```
9. 
```
docker-compose up -d connect-debezium
```
10. 
```
docker-compose up -d cars2kafka
```

- ##### Create database and tables :

- ##### Configure and launch cars2kafka:

- ##### Create streams with ksql cli:



License
------------
The project is licensed under the [GNU General Public License v3.0](LICENSE)
