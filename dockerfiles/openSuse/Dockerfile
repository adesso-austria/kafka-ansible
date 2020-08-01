FROM opensuse/leap

RUN zypp-refresh
RUN zypper install -y -f openssh
RUN systemctl enable sshd
#RUN firewall-cmd --permanent --add-service=ssh
#RUN firewall-cmd --reload