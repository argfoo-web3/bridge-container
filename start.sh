#!/bin/sh

docker-compose -f ./indexer-server/docker-compose.yml up -d
docker-compose -f ./indexer-oracle/docker-compose.yml up -d
docker-compose -f ./indexer-crosschain/docker-compose.yml up -d
docker-compose -f ./oracle/docker-compose.yml up -d
docker-compose -f ./server/docker-compose.yml up -d

# open the browser window
open http://localhost:8000/swagger
open http://localhost:5577
open http://localhost:5588