FROM node:12.16.3-alpine3.9

RUN apk update && apk upgrade && \
  apk add --no-cache vim bash git curl

WORKDIR '/project'

COPY ./package*.json ./
RUN npm install --only=prod --silent

COPY . ./

CMD ["npm", "run", "start"]