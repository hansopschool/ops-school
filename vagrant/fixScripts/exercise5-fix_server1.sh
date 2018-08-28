#!/bin/bash
#add fix to exercise5-server1 here
#ssh-keygen -t rsa
#sleep 15
#ssh-copy-id -i /home/vagrant/exit.pub vagrant@192.168.100.11
#global script
$global = <<SCRIPT
#check for private key for vm-vm comm
[ -f /vagrant/id_rsa ] || {
  ssh-keygen -t rsa -f /vagrant/id_rsa -q -N ''
}
#deploy key
[ -f /home/vagrant/.ssh/id_rsa ] || {
    cp /vagrant/id_rsa /home/vagrant/.ssh/id_rsa
    chmod 0600 /home/vagrant/.ssh/id_rsa
}
#allow ssh passwordless
grep 'vagrant@node' ~/.ssh/authorized_keys &>/dev/null || {
  cat /vagrant/id_rsa.pub >> ~/.ssh/authorized_keys
  chmod 0600 ~/.ssh/authorized_keys
}
#exclude node* from host checking
cat > ~/.ssh/config <<EOF
Host node*
   StrictHostKeyChecking no
   UserKnownHostsFile=/dev/null
EOF
#end script
