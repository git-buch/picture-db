FROM node:15
WORKDIR /src
COPY package*.json /src/
RUN npm i --production
COPY server.js routes.js index.html /src/
EXPOSE 3001
CMD npm start
