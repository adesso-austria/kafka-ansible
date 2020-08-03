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