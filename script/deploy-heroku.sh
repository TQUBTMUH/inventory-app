#!/usr/bin/env bash
cd  ~/Projects/dimension/dev/dimension-sdk
mvn clean install -Dmaven.test.skip=true
heroku deploy:jar sample-app/target/sample-app-1.0.0-SNAPSHOT.jar --app dimension-dev --jdk 12