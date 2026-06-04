#!/usr/bin/env bash
PROJECTNAME="nginx-httpd"

[ ! -d "/var/www/$PROJECTNAME" ] && mkdir -p "/var/www/$PROJECTNAME"
cp "/home/vbox/userver/src/$PROJECTNAME/index.html" "/var/www/$PROJECTNAME/index.html"

rm /etc/nginx/sites-enabled/neotelemetrimodul4
cp "/home/vbox/userver/src/$PROJECTNAME/neotelemetrimodul4" /etc/nginx/sites-available/neotelemetrimodul4
ln -s /etc/nginx/sites-available/neotelemetrimodul4 /etc/nginx/sites-enabled/

nginx -t
systemctl reload nginx
