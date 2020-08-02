FROM debian:latest

# install ansible
RUN apt-get update
RUN apt-get install -y gnupg openssh-client
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update
RUN apt-get install -y python ansible
RUN sed -i 's/#host_key_checking = False/host_key_checking = False/' /etc/ansible/ansible.cfg

# SSH certs
ADD certs/rsa_key /root/.ssh/id_rsa
ADD certs/rsa_key.pub /root/.ssh/id_rsa.pub
RUN chmod -R 600 /root/.ssh

# Inventory
ADD hosts /etc/ansible/hosts

CMD ["ansible", "all", "-m", "ping"]