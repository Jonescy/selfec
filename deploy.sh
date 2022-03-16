echo "start deploying ...."
git pull
echo  "building website ...."
hugo -D
echo "Copy to the specified directory of the website ...."
cp -r ./public/* /www/wwwroot/selfec.jonescy.com/
echo "reload nginx configuration ...."
nginx -s reload
