#! /bin/bash
if [ ! -x /usr/sbin/ngnix ]; then
  apt-get update && apt-get install -y nginx
fi
## Default NGINX directory: /usr/share/nginx/html
## Replace this with symbolic link to vagrant directory.
if [ ! -L /usr/share/nginx/html ]; then
  rm -rf /usr/share/nginx/html
  ln -s /vagrant/html /usr/share/nginx/html
fi
