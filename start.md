#!/bin/bash
mvn clean package -Dmaven.test.skip=true
#nohup java -jar rocketmq-console-ng-2.0.0.jar --server.port=12581 --rocketmq.config.namesrvAddr=localhost:9876 &
java -jar \
-Drocketmq.config.namesrvAddr=localhost:9876 \
-Drocketmq.config.isVIPChannel=false \
rocketmq-console-ng-2.0.0.jar \
--server.port=12581