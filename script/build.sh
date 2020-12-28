#!/usr/bin/env bash
cd  ~/Projects/dimension/dev/dimension-sdk
mvn clean install -Dmaven.test.skip=true -Dvaadin.productionMode=true
