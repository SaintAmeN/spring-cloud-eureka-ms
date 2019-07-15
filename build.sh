#!/bin/bash
docker rmi apss-eureka-ms
mvn package
docker build -t apss-eureka-ms -f docker/Dockerfile .
docker save apss-eureka-ms -o apss-eureka-ms.tar
