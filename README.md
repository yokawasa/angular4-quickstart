# angular4-quickstart

Angular 4 Apps Quickstart Configuration that deploys an app using [angular-cli](https://github.com/angular/angular-cli) and [Docker Container](https://www.docker.com/what-container) (Great thanks to [angular-cli-docker](https://github.com/suchja/angular-cli-docker) which is a reference project for this)

## Prerequisites
You need Docker to run docker containers. You can download docker (Free Community Edition) for Mac, Windows or Linux from [here](https://www.docker.com/community-edition)

## Building and Running an Angular 4 app

What you need to do is simply to run build.sh. That's it!

```
$ cat build.sh

#!/bin/sh

APP_NAME=myapp
docker pull teracy/angular-cli
docker run -it --rm --name create-angular-project -v "$PWD":/home/nodejs -w /home/nodejs teracy/angular-cli ng new $APP_NAME
docker-compose build

docker-compose up

$ ./build.sh
```

What the build.sh basically does are:
- Pull an angular-cli image from a registry, [teracy/angular-cli](https://hub.docker.com/r/teracy/angular-cli/)
- Run the angular-cli conatiner and Creates a new Angular 4 app named 'myapp'
- Build a container that can serve the app
- Launches the server in the container

If the build.sh launches the server in the container and the app gets ready, you will see messages like this:
![console-screen-build](https://github.com/yokawasa/angular4-quickstart/blob/master/img/console-screen-build.png)

Then, open your browser on http://localhost:4200/
![app-welcome-page](https://github.com/yokawasa/angular4-quickstart/blob/master/img/app-welcome-page.png)