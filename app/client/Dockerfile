FROM node:12.16.3-alpine3.9

RUN mkdir -p /project
WORKDIR '/project'

COPY ./package*.json ./
RUN npm install --only=prod --silent

COPY . ./

CMD ["npm", "run", "start"]