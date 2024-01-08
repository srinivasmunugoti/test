sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y


cat <<EOF >> playbook.yml
---
- hosts: localhost
  tasks:
    - name: install nginx
      apt: name=nginx state=latest
    - name: start nginx
      service:
          name: nginx
          state: started
EOF
 
sudo chmod +x playbook.yml
sudo ansible-playbook playbook.yml




