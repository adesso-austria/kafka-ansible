# kafka-ansible
DEMO SHOWCASE - Apache Kafka setup with Ansible

## Start docker-compose
* `docker-compose up --build -d`

## Test ansible connection
* `docker build -t adesso/ansible .`
* `docker run --rm --network kafka-ansible_default adesso/ansible`