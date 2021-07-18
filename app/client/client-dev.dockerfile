FROM node:16-alpine3.14

WORKDIR '/app'

COPY ./package*.json ./
#RUN npm install --only=prod --silent
RUN yarn install --production --silent

COPY ./ ./

CMD ["yarn", "start"]
