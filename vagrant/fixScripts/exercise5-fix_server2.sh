#!/bin/bash
#add fix to exercise5-server2 here
ssh-keygen -t rsa
ssh-copy-id -i id_rsa.pub vagrant@192.168.100.10
