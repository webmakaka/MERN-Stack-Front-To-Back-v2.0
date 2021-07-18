FROM node:16-alpine3.14

RUN apk update && apk upgrade && \
  apk add --no-cache vim bash git curl

WORKDIR '/app'

COPY ./package*.json ./
# RUN npm install --only=prod --silent
RUN yarn install --production --silent

COPY ./ ./

CMD ["npm", "run", "prod"]