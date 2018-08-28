#!/bin/bash
#add fix to exercise5-server2 here
#ssh-keygen -t rsa
#sleep 15
#ssh-copy-id -i /home/vagrant/exit.pub vagrant@192.168.100.10
sudo ssh-keygen -t rsa -f /vagrant/id_rsa -q -N ''
sleep 10
sudo cp /vagrant/id_rsa /home/vagrant/.ssh/id_rsa
sudo chmod 0600 /home/vagrant/.ssh/id_rsa
sleep 5
sudo ssh-copy-id -i /home/vagrant/.ssh/id_rsa vagrant@192.168.100.10
