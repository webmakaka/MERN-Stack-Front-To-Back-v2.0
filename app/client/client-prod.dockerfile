FROM node:16-alpine3.14 as builder

WORKDIR '/app'

COPY ./package*.json ./
RUN yarn install

COPY ./ ./

RUN yarn build

FROM nginx

RUN apt update && apt upgrade && \
  apt install -y bash vim less curl iputils-ping dnsutils

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build /usr/share/nginx/html
