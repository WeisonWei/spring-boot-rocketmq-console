# http://rocketmq.apache.org/docs/quick-start/
# 1 启动
#name
#nohup ./bin/mqnamesrv -n 10.88.2.250:9876 &
#tail -f ~/logs/rocketmqlogs/namesrv.log
sh mqnamesrv

#broker
#nohup ./bin/mqnamesrv -n 10.88.2.250:9876 &
#tail -f ~/logs/rocketmqlogs/broker.log 
sh mqbroker -n 10.88.2.250:9876 autoCreateTopicEnable=true

# 2 环境变量
export NAMESRV_ADDR=ip:9876

# 3 打包 运行
mvn clean package -Dmaven.test.skip=true
java -jar rocketmq-console-ng-2.0.0.jar --server.port=12581 --rocketmq.config.namesrvAddr=localhost:9876
java -jar \
-Drocketmq.config.namesrvAddr=10.88.2.250:9876 \
-Drocketmq.config.isVIPChannel=false \
rocketmq-console-ng-2.0.0.jar \
--server.port=12581






