#!/bin/bash
#add fix to exercise5-server2 here
#ssh-keygen -t rsa
#sleep 15
#ssh-copy-id -i /home/vagrant/exit.pub vagrant@192.168.100.10
#sudo ssh-keygen -t rsa -f /vagrant/id_rsa -q -N ''
#sudo cp /vagrant/id_rsa /home/vagrant/.ssh/id_rsa
#sudo chmod 0600 /home/vagrant/.ssh/id_rsa
#sleep 5
#sudo ssh-copy-id -i /home/vagrant/.ssh/id_rsa vagrant@server1
#sed -i -e 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
#eval `ssh-agent`
#sudo ssh-keygen
#sleep 5
#sudo ssh-copy-id -i /vagrant/id_rsa.pub vagrant@192.168.100.10
#option5
sed -i -e 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
sed -i -e 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
sed -i -e 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
echo "PermitRootLogin without-password" >> /etc/ssh/sshd_config
echo "AllowUsers root otheruser" >> /etc/ssh/sshd_config
sudo service sshd restart
