#!/bin/sh

docker-compose -f ./indexer-server/docker-compose.yml down
docker-compose -f ./indexer-oracle/docker-compose.yml down
docker-compose -f ./indexer-crosschain/docker-compose.yml down
docker-compose -f ./oracle/docker-compose.yml down
docker-compose -f ./server/docker-compose.yml down
docker volume prune --all --force