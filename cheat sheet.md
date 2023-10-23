## create the image

docker build .

## listen to the container

docker ps

## listen to the images

docker images

## d is deattaching the terminal

docker run -p 80:80 -d CONTAINER

## attach the container

docker attach CONTAINER

## detacched by default

docker start CONTAINER
docker stop CONTAINER

## -i for interactive and -t for creating a terminal, -a attaching

docker run -i -t CONTAINER ## we can insert --rm to remove the container whe it is stoped
docker start -a -i CONTAINER

## remove containers

docker rm CONTAINER

## remove images

docker rmi IMAGES

## delete all images

docker image prune
