# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [2019, ENG]

**Original src:**  
https://github.com/bradtraversy/devconnector_2.0

<br/>

## [API](./api/Readme.md)

## [CLIENT](./client/Readme.md)


<br/>

### Run Virtual Machine by Vagrant

    $ cd ~
    $ git clone https://github.com/marley-nodejs/MERN-Stack-Front-To-Back-v2.0
    $ cd MERN-Stack-Front-To-Back-v2.0/vm
    $ vagrant up
    $ vagrant box update
    $ vagrant status
    $ vagrant ssh controller

<br/>

### Iside Virtual Machine

<br/>

    $ cd ~
    $ git clone https://github.com/marley-nodejs/MERN-Stack-Front-To-Back-v2.0
    $ cd MERN-Stack-Front-To-Back-v2.0


<br/>

## Dockerizing API (api.anketa.info)

<br/>

    $ docker build ./api -f ./api/Dockerfile -t marley/api.anketa.info:latest

<br/>

## Dockerizing Client (anketa.info)

<br/>

    $ docker build ./client -f ./client/Dockerfile -t marley/client.anketa.info:latest

<br/>

## Dockerizing Proxy


    # cd proxy/svc
    # cp api.anketa.info.service /etc/systemd/system/
    # cp client.anketa.info.service /etc/systemd/system/


<br/>

## Run as linux service

    # systemctl enable api.anketa.info.service
    # systemctl start  api.anketa.info.service
    # systemctl status api.anketa.info.service

<br/>

    # systemctl enable client.anketa.info.service
    # systemctl start  client.anketa.info.service
    # systemctl status client.anketa.info.service

<br/>

http://192.168.0.11:65068/

<br/>

## Setup proxy

    # cd proxy
    # docker build -t marley/proxy -f Dockerfile .

<br/>

    # cp proxy.service /etc/systemd/system/

<br/>

    # systemctl enable proxy.service
    # systemctl start  proxy.service
    # systemctl status proxy.service

<br/>

Add not router rule for redirects from port 80 on server host port 80. Here is 192.168.1.101

<br/>


http://anketa.info



---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>

