FROM node:18-alpine AS builder

WORKDIR /app
COPY /package.json .

RUN npm install

COPY . . 

#stage 2 with nodejs distroless image
COPY --from=builder /app .
CMD [ "nodejs", "server.js" ]