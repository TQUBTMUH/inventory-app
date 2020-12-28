#!/usr/bin/env bash
cd  ~/Projects/dimension/dev/dimension-sdk/sample-app
echo "Enter IP address of remote server ..."
read ip
echo "Enter user of remote server ..."
read user
echo "packages will be deployed at .dimension/sample-app/"
ssh $user@$ip "mkdir -p .dimension/sample-app/lib/"
rsync -v -e ssh target/sample-app-1.0.0-SNAPSHOT.jar $user@$ip:.dimension/sample-app/lib/sample-app.jar --progress
ssh $user@$ip "sudo sh .dimension/sample-app/bin/install.sh"
ssh $user@$ip "sudo sh .dimension/sample-app/bin/tail.sh"