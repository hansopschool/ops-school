#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen -t rsa
sleep 15
ssh-copy-id -i /home/vagrant/exit.pub vagrant@192.168.100.11
