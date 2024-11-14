# adding repository and installing nginx		
apt update
apt install nginx -y
cat <<EOT > cacherabbit
upstream cacherabbit {

 server app01:8080;

}

server {

  listen 80;

location / {

  proxy_pass http://cacherabbit;

}

}

EOT

mv cacherabbit /etc/nginx/sites-available/cacherabbit
rm -rf /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/cacherabbit /etc/nginx/sites-enabled/cacherabbit

#starting nginx service and firewall
systemctl start nginx
systemctl enable nginx
systemctl restart nginx
