#FROM node:8.11.1-alpine
FROM node:10.15.3

WORKDIR /app
ADD . /tmp
RUN /bin/sh -c 'cd /tmp && npm install && npm install -g typescript && npm run build && mv ./dist/* /app/ && mv ./node_modules /app/ && mv ./public /app/ && mv ./test /app/ && rm -rf /tmp'
