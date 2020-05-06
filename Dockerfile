FROM node:10-alpine

RUN mkdir -p /home/raj/Projects/resumable.js/samples/Node.js/node_modules && chown -R node:node /home/raj/Projects/resumable.js/samples/Node.js

WORKDIR /home/raj/Projects/resumable.js/samples/Node.js

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "app.js" ]
