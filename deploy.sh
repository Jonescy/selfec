git pull
hugo -D
cp -r ./public /www/wwwroot/selfec.jonescy.com/
nginx -s reload
