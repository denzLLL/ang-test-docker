FROM node:alpine

ENV CHROME_BIN="/usr/bin/chromium-browser"

RUN apk add --no-cache  chromium --repository=http://dl-cdn.alpinelinux.org/alpine/v3.10/main

WORKDIR /app

EXPOSE 3000

COPY package*.json ./

ENV CHROME_BIN /usr/bin/chromium-browser

RUN npm install

COPY . ./

CMD ["npm", "run", "test-headless"]
