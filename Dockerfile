# STAGE 1 : BUILD
FROM node:20-alpine AS build
WORKDIR /usr/src
COPY package*.json ./
RUN ["npm", "install"]
COPY . .
EXPOSE 80
CMD ["npm", "run", "dev"]