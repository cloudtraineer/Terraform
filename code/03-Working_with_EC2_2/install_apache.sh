#!/bin/bash
sudo yum install httpd -y
sudo cd /var/www/html
sudo echo "Created using Terraform" >> index.html
sudo service httpd start