FROM node:22-alpine

RUN apk add --no-cache docker-cli

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY . .

CMD ["node", "server.js"]
