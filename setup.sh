if [ -d "../awx" ]; then
  rm -rf ../awx
fi
ansible-playbook -i inventory awxsetup.yml
cd /root/awx/installer
ansible-playbook -i inventory install.yml -e "ansible_python_interpreter=/usr/bin/python"
