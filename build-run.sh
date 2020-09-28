#!/usr/bin bash
cd ./
#path=`pwd`
mvnw clean package -Dmaven.test.skip=true
sleep 3s
#cd ${path}/target
cd ./target
java -jar spring-boot-rocketmq-console-2.0.0.jar --server.port=10086 --rocketmq.config.namesrvAddr=localhost:9876