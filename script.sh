#!/bin/bash
# put your domain in this var
url=http://localhost:8080

# save the status in some variable 
status=`curl $url -k -s -f -o /dev/null && echo "SUCCESS" || echo "ERROR"`    

# print results (or use it in your scripts)

echo "****************************"\n
echo "testing $url=$status"
echo "****************************"\n

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --headless --dump-dom --disable-gpu $url > output.txt
var=$(cat output.txt |grep 'id="p1"')
echo "****************************"\n
echo "time is : $var"
echo "****************************"\n
