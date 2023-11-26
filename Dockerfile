FROM node:18-alpine

WORKDIR /app

COPY /package.json  /app/

COPY . /app/

RUN npm install

CMD [ "node", "server.js" ]