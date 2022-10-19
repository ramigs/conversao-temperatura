FROM node:16.18.0-alpine

WORKDIR /app

COPY src/package*.json .

RUN npm ci --only=production

COPY src .

EXPOSE 8080

CMD ["node", "server.js"]

USER node