echo "start deploying ...."
git pull
echo "cleaning build directory ...."
rm -rf ./public/*
echo  "building website ...."
hugo -D
echo "removing website directory"
rm -rf /www/wwwroot/selfex.jonescy.com/*
echo "Copy to the specified directory of the website ...."
cp -r ./public/* /www/wwwroot/selfec.jonescy.com/
echo "reload nginx configuration ...."
nginx -s reload
