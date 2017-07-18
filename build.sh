#!/bin/sh

APP_NAME=myapp
docker pull teracy/angular-cli
docker run -it --rm --name create-angular-project -v "$PWD":/home/nodejs -w /home/nodejs teracy/angular-cli ng new $APP_NAME
docker-compose build

docker-compose up
