echo off

docker network create -d bridge my-bridge-network

docker run --detach --publish 6379:6379 --name redis redis:latest

docker network connect my-bridge-network redis