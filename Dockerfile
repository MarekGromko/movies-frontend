# fist build
FROM node:slime-alpine AS build
WORKDIR /usr/src
COPY package*.json ./
RUN ["npm", "install"]
COPY . .
RUN ["npm", "run", "build"]

# then start
FROM nginx:1.27.4-alpine-slime AS prod
COPY --from=build /usr/src/dist /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx/nginx.conf /etc/nginx/conf.d
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]