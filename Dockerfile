FROM node:9.0.0
RUN npm install --global gulp-cli
ADD ./app /app

WORKDIR /app
RUN npm install && npm install --save-dev gulp

EXPOSE 8080
CMD ["node", "server.js"]