KSQL Workshop
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
1. [Start main containers](start_containers.md)
- ##### Create database and tables :
```
docker exec -it $(docker-compose ps | grep mysql | awk '{print $1}') bash
mysql -u root -p <password> (3jtkZQGjV4DzM9q8)

CREATE USER `ksql`@`%` IDENTIFIED BY `3jtkZQGjV4DzM9q8`;
GRANT ALL PRIVILEGES ON zity.* TO `ksql`@`%`;
```
- ##### Configure and launch cars2kafka:
2. Set up config.json (take cookies from web) and launch cars2kafka container
```
docker-compose up -d cars2kafka
```
- ##### Set up debezium to be able to listen changes on mysql tables:
```
     curl -i -X POST -H "Accept:application/json" \
     -H  "Content-Type:application/json" http://localhost:8083/connectors/ \
     -d @flydays-debezium.json
```
- ##### Create streams with ksql cli:
```
CREATE STREAM zity_rentals_stream WITH (KAFKA_TOPIC='zity_rentals',VALUE_FORMAT='AVRO');
	
CREATE TABLE zity_rentals_table WITH (KAFKA_TOPIC='zity_rentals',VALUE_FORMAT='AVRO');

SELECT user_id, vehicle_remaining_km FROM zity_rentals_stream WHERE vehicle_remaining_km<3;

CREATE STREAM zity_rentals_stream_low_fuel  AS \
	SELECT * FROM zity_rentals_stream WHERE  vehicle_remaining_km<70 AND book_status='BOOKED_DRIVE';

```
- ##### Configure slack connector:
```
lore ipsum
```
- ##### Data visualization with kibana:
```
lore ipsum
```

License
------------
The project is licensed under the [GNU General Public License v3.0](LICENSE)
