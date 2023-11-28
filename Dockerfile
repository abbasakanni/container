FROM node:18-alpine AS builder

WORKDIR /app
COPY /package.json .

RUN npm install

COPY . . 

#stage 2 with nodejs distroless image
FROM gcr.io/distroless/nodejs:18
WORKDIR /app
COPY --from=builder /app .
CMD [ "node", "server.js" ]