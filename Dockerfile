FROM node:20-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY index.js ./
COPY sounds ./sounds

CMD ["node", "index.js"]
