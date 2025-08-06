FROM node:24-alpine AS dev
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
CMD ["npm", "run", "start:dev"]