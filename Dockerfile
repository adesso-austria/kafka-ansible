FROM ansibleplaybookbundle/apb-base:canary

# ssh certs
ADD certs/rsa_key /root/.ssh/id_rsa
ADD certs/rsa_key.pub /root/.ssh/id_rsa.pub

ADD playbooks /opt/apb/actions