#!/bin/bash
yum install httpd -y
cd /var/www/html
echo "Created using Terraform" > index.html
service httpd start
chkconfig httpd on