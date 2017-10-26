# Docker Webpack

> Webpack development and build environment running in a Node container

## Installing the Image

Create the docker image from the Dockerfile or pull the latest from the docker repository

`docker build -t webpack .`
or
`docker pull tomasswood/webpack`

Map the source repository to the image and run `npm install`. Note `yarn install` is also supported.

`docker run -it -v /path/to/src:/app tomasswood/webpack npm install --no-bin-links`

Run your Webpack build script

`docker run -it --rm -v /path/to/src:/app tomasswood/webpack webpack`

Run your Webpack dev server

`docker run -it --rm -v /path/to/src:/app -p 3000:8080 tomasswood/webpack webpack-dev-server --hot --inline --progress --host 0.0.0.0`
