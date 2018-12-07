#!/bin/bash
domain=$1
if [ ! $domain ]
then
  echo Must be pass a domain name
else
  echo Install Nginx
  sudo apt-get update
  sudo apt-get install nginx

  echo Installing Certbot
  sudo add-apt-repository ppa:certbot/certbot
  sudo apt-get update
  sudo apt-get install python-certbot-nginx

  echo Allowing HTTPS Through the Firewall
  sudo ufw allow 'Nginx Full'
  sudo ufw delete allow 'Nginx HTTP'

  echo Obtaining an SSL Certificate
  sudo certbot --nginx -d $domain -d www.$domain
  echo Everything done! 🎉 Nginx web server with SSL running on http://$domain
fi