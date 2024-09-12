#!/bin/bash
set -e

# Stop the existing running container (if any - to get rid of port mapping issue)
container_id = docker ps | awk -F " " '{print $1}'
docker -rm -f $container_id
