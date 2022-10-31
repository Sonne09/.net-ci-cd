#!/bin/bash
TIMESTAMP=`date +%Y%m%d-%H%M%S`
sudo cp /var/www/api/gittest /var/www/api/gittest_$TIMESTAMP/ -r
echo 'backup created'
sudo mv /var/www/api/gittest_* /var/www/api/Backup
echo 'backup moved'
sudo cp /home/ubuntu/All_Updates/Oct31/test/* /var/www/api/gittest/ -r
echo 'update files copied'
cat /var/www/api/testapi/appsettings.json
echo 'appsetting available'
sudo chown nginx.nginx /var/www/api/testapi/* -R
sudo chmod 755 /var/www/api/testapi/* -R