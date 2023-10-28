## create the image

docker build -t NAME:TAG .

## listen to the container

docker ps

## listen to the images

docker images

# -d is deattaching the terminal

# -i for interactive and -t for creating a terminal, -a attaching

# we can insert --rm to remove the container whe it is stoped

docker run -i -t CONTAINER
docker start -a -i CONTAINER
docker run -p 80:80 -d --rm --name NAME -v LOCAL_FOLDER:CONTAINER_FOLDER CONTAINER

## attach the container

docker attach CONTAINER

## detacched by default

docker start CONTAINER
docker stop CONTAINER

## remove containers

docker rm CONTAINER

## remove images

docker rmi IMAGES

## delete all images

docker image prune

## rename an image

docker tag currentName:CurrentTag newNAme:newTag

## pushing images to DockerHub

docker push NAME:TAG

## pulling images from dockerHub

docker pull NAME:TAG

## checking/removing the volume on a docker temp foolder locally

docker volume ls
docker volume prune
docker volume rm VOL_NAME

# binding volume (saviing data locally)

docker run -p 3000:80 -d --rm --name feedback-appvolume --env-file ./.env -v feedback:/app/feedback -v "C:\Fedev\DockerKubernetes Course\4\_ analyze and violume real app:/app" feedback-node:volume

## getting the logs from the container

docker logs CONTAINER_NAME

## docker network

docker network create NETWORK_NAME
docker run --name favContainer --network NETWORK_NAME -d -p 3000:3000 fav
docker run -d --name mongodb --network NETWORK_NAME mongo

## examples

docker build -t backend .
docker build -t frontend .
docker run --name backendApp --network app\*Network -d -p 80:80 backend
docker run --name frontendApp --network app\*Network -d -p 3000:3000 frontend

    docker run -it -v "C:\Fedev\DockerKubernetes Course\6\_ multi container app\frontend\src:/app/src" --name frontendApp --network app_Network -d -p 3000:3000 --rm frontend

## persistence mongoDB (wiith local volume)

docker run -d --name mongodb -v data:/data/db --network app_Network mongo
docker run -d --name mongodb -v data:/data/db -e MONGO_INITDB_ROOT_USERNAME=andre -e MONGO_INITDB_ROOT_PASSWORD=secret --network app_Network mongo

     docker run --name backendApp --network app_Network -d -v "C:\Fedev\DockerKubernetes Course\6_ multi container app\backend:/app" -v logs:/app/logs -v /app/node_modules  -p 80:80 --rm backend

## docker compose

docker-compose up -d
docker-compose down
docker-compose up -d --build server

## docker executiable

docker run -it -d node
docker exec -it CONTAINER_NAME npm init
or docker run -it node npm init

docker run -it -v "C:\Fedev\DockerKubernetes Course\8\_ utility container:/app" CONTAINER\*NAME npm init

- considering that we have inside the Dockerfile ENTRYPOINT [ "npm" ]
  docker run -it -v "C:\Fedev\DockerKubernetes Course\8\* utility container:/app" mynpm init
