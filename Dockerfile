FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=secret

RUN mkdir -p /home/node-app

COPY . /home/node-app

CMD ["node", "/home/node-app/app/server.js"]