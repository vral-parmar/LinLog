#!/bin/bash

mkdir /tmp/irLog
echo "/tmp/irLog Directory Created"

cp -R /var/log/apache2 /tmp/irLog/
cp -R /var/log/nginx /tmp/irLog/
cp -R /var/log/mysql /tmp/irLog/
cp /var/log/alternatives.log /tmp/irLog
cp /var/log/auth.log /tmp/irLog

cd /tmp/

tar -czf irLog.tar.gz /tmp/irLog/
echo "ZIP File Created save at /tmp"

rm -rf /tmp/irLog
echo "All Work Done You can get file from /tmp"
