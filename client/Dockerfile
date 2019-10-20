FROM node:alpine as builder

RUN apk update && apk upgrade && \
  apk add --no-cache bash vim less curl


RUN mkdir -p /project
WORKDIR '/project'

COPY ./package*.json ./
RUN npm install

COPY . ./

RUN npm run build

FROM nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /project/build /usr/share/nginx/html