#!/bin/bash
#add fix to exercise3 here
sudo sed -i -e 's/deny from all/Allow from all/g' /etc/apache2/sites-enabled/000-default
