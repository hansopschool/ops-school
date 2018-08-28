#!/bin/bash
#add fix to exercise5-server2 here
ssh-keygen -t rsa
sleep 30
ssh-copy-id -i /home/vagrant/exit.pub vagrant@192.168.100.10
