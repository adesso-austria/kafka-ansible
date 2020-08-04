# kafka-ansible
DEMO SHOWCASE - Apache Kafka setup with Ansible

## Start docker-compose
* `docker-compose up --build -d`

## Test ansible connection
* `docker build -t adesso/ansible .`
* `docker run --rm --network kafka-ansible_default adesso/ansible`

## Install Zookeeper
* `docker run --rm --network kafka-ansible_default adesso/ansible ansible-playbook /opt/playbooks/zookeeper.yml`
* `docker exec -ti ID /bin/bash`
* `ps aux | grep zookeeper`

## Install Kafka
* `docker run --rm --network kafka-ansible_default adesso/ansible ansible-playbook /opt/playbooks/kafka.yml`

## Playground
* Connect to one of the Kafka brokers 
* `docker exec -ti ID /bin/bash`

### Create topic
* `/opt/kafka/bin/kafka-topics.sh --zookeeper zookeeper-1:2181 --create --topic test-topic --partitions 3 --replication-factor 1 --if-not-exists`

### List topics
* `/opt/kafka/bin/kafka-topics.sh --zookeeper zookeeper-1:2181 --list --exclude-internal`

### Produce messages to a Kafka topic
* `/opt/kafka/bin/kafka-console-producer.sh --broker-list kafka-1:9092 --topic test-topic`

### Consume a Kafka topic from the beginning
* `/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server kafka-1:9092 --topic test-topic --from-beginning`
