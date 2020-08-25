#!/usr/bin/env bash

docker-compose -f docker-compose-replicaset.yml up -d && docker exec -it mongo1 mongo;

# Exec the command
# rs.initiate({"_id":"my_replica","members":[{"_id":0,"host":"192.168.88.17:27017"},{"_id":1,"host":"192.168.88.17:27018"},{"_id":2,"host":"192.168.88.17:27019"}]})

# For second-rep-set press Ctrl + C

# Connection string
# mongodb://192.168.88.17:27017,192.168.88.17:27018,192.168.88.17:27019/aurickdb?replicaSet=my_replica


# rs.initiate({"_id":"my_replica","members":[{"_id":0,"host":"192.168.88.17:27017"},{"_id":1,"host":"192.168.88.18:27017"}]})
# Connection string
# mongodb://192.168.88.17:27017,192.168.88.18:27017/aurickdb?replicaSet=my_replica