FROM node:18-alpine

WORKDIR /app

COPY /package.json  /app/

COPY /server.js /app/

RUN npm install

CMD [ "node", "server.js" ]