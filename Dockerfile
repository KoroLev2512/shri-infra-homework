ARG NODE_VERSION=24.4.0
FROM node:${NODE_VERSION}-alpine as base

WORKDIR /usr/src/app

COPY . .
RUN npm ci
RUN npm run build

EXPOSE 3000

CMD npm start