#!/usr/bin/env bash

apt-get update
apt-get install -y nginx php5-fpm

rm -rf /var/www
rm /etc/nginx/sites-enabled/default

ln -fs /vagrant/public /var/www
ln -fs /vagrant/nginx.conf /etc/nginx/sites-enabled/nginx.conf

sudo service nginx restart