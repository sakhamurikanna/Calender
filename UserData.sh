#!/bin/bash
echo BEGIN >> /root/testresult
sudo -i
cd /var/www/html/
rm -rf * >> /root/testresult
wget https://s3.amazonaws.com/repo-iuhygfcdertyhj/Code-repo/Calendar.war >> /root/testresult
sleep 10
jar xvf Calendar.war >> /root/testresult
chown apache:apache *  >> /root/testresult
sleep 5
service httpd restart >> /root/testresult
echo END >> /root/testresult