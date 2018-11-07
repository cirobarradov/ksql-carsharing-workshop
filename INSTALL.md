Requirements Installation Guide
=================
Requirements
------------
- Operative System: Ubuntu 16.04 

Tech Stack
------------
- Docker
- Docker Compose
- Kafka (optional)

Docker
------------
```
sudo apt-get update
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update
apt-cache policy docker-engine
sudo apt-get install -y docker-engine
sudo systemctl status docker
sudo usermod -aG docker $(whoami)
```
Docker-Compose
------------
```
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
Kafka
------------
option a (apt-get)
```
wget -qO - https://packages.confluent.io/deb/5.0/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.confluent.io/deb/5.0 stable main"
sudo apt-get update && sudo apt-get install confluent-platform-oss-2.11
```
option b (download)
```
wget http://packages.confluent.io/archive/5.0/confluent-oss-5.0.0-2.11.zip
unzip confluent-oss-5.0.0-2.11.zip
cd confluent-5.0.0
```
