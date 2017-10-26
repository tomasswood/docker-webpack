FROM node
MAINTAINER Thomas Wood <tom@thomaswood.me>

RUN npm install -g webpack webpack-dev-server yarn

VOLUME /app

EXPOSE 3000

WORKDIR /app
