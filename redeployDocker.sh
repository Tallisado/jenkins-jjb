#!/bin/bash

cd /home/superdave/devops
docker kill nodeapp && docker rm -f nodeapp && git pull && docker build -t tvanek/node-web-app . && docker run -d -p 49160:8080 --name nodeapp tvanek/node-web-app
