#cloud-config

packages:
  - python
  - python-dev
  - python-pip
  - ansible
  - git
 
runcmd: 
  - echo -e "[localhost]\n127.0.0.1 ansible_connection=local" >> /etc/ansible/hosts
  - ssh-keyscan github.com >> /etc/ssh/ssh_known_hosts
  - sudo mkdir -p /etc/ansible/plays
  - ansible-pull -o -C master -d /etc/ansible/plays/ -U git@github.com:amila-ku/k8-ansible.git >> /var/log/ansible-pull.log
