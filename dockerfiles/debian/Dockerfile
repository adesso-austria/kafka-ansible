FROM debian:latest
MAINTAINER Michael Vlasaty

# ssh-server
RUN apt-get update
RUN apt-get install -qy openssh-server python
RUN mkdir /var/run/sshd
RUN echo 'root:toor2020' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN echo "sshd: ALL" >> /etc/hosts.allow
# add user for ansible
RUN useradd manager -m
RUN echo 'manager:test123' | chpasswd
RUN mkdir -p /home/manager/.ssh
ADD rsa_key.pub /home/manager/.ssh/rsa_key.pub
RUN cat /home/manager/.ssh/rsa_key.pub >> /home/manager/.ssh/authorized_keys

CMD ["/usr/sbin/sshd", "-D"]