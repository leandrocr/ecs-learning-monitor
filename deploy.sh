#!/bin/bash
docker build -t "leandrorepolho/monitor" .
docker push leandrorepolho/monitor
../ecs-deploy/ecs-deploy -r us-east-1 -c lrepolho-ecs2-ECSCluster-AZ4WAQSVM3G2 -n lrepolho-ecs2-service-CEA7GH07GRU6 -i leandrorepolho/monitor:latest
