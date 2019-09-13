FROM ubuntu:18.04
MAINTAINER Marley (marley.org)
# install nginx
RUN apt-get update -y
# RUN apt-get install -y python-software-properties
RUN apt-get install -y \
    software-properties-common \
    vim \
    curl \
    traceroute \
    git \
    net-tools \
    iputils-ping

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update -y
RUN apt-get install -y nginx
# deamon mode off
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# volume
# VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/var/log/nginx"]

COPY ./conf/*.conf /etc/nginx/conf.d/

# expose ports
EXPOSE 80 443
# add nginx conf
# ADD config/nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /etc/nginx
CMD ["nginx"]
