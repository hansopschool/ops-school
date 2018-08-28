#!/bin/bash
#add fix to exercise5-server2 here
#ssh-keygen -t rsa
#sleep 15
#ssh-copy-id -i /home/vagrant/exit.pub vagrant@192.168.100.10
ssh-keygen -t rsa -f /vagrant/id_rsa -q -N ''
sleep 10
cp /vagrant/id_rsa /home/vagrant/.ssh/id_rsa
chmod 0600 /home/vagrant/.ssh/id_rsa
sleep 5
grep 'vagrant@192.168.100.10' ~/.ssh/authorized_keys &>/dev/null || {
  cat /vagrant/id_rsa.pub >> ~/.ssh/authorized_keys
  chmod 0600 ~/.ssh/authorized_keys
}
