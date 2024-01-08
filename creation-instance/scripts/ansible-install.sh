sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
sudo ansible-galaxy install nginxinc.nginx -y
ansible-playbook playbook.yml



