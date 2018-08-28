#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen -t rsa
sleep 30
ssh-copy-id -i id_rsa.pub vagrant@192.168.100.11
