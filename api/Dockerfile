FROM node:alpine

RUN apk update && apk upgrade && \
  apk add --no-cache vim bash git 

WORKDIR '/project'

COPY ./package*.json ./
RUN npm install

COPY . ./

CMD ["npm", "run", "start"]