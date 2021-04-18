FROM node:7.2
RUN npm install --global gulp-cli
ADD ./app /app

WORKDIR /app
RUN npm install

EXPOSE 8080
CMD ["node", "server.js"]