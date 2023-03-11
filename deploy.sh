#!/bin/bash

for image in $*; do    
    docker pull $image
done

docker-compose up -d

if [ "$1" = "$NOIR_DOCKER_REPO" ]; then
    docker exec -it noir npx prisma generate
fi