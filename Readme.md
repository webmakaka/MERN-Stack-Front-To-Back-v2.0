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

    $ vagrant box update
    $ vagrant up
    $ vagrant status
    $ vagrant ssh controller

<br/>

### Inside Virtual Machine

    $ sudo su -

    # ufw disable

    # vi /etc/hosts
    192.168.0.11 anketa.info
    192.168.0.11 api.anketa.info
    
<br/>

^D

<br/>

    $ cd ~
    $ git clone https://github.com/marley-nodejs/MERN-Stack-Front-To-Back-v2.0
    $ cd MERN-Stack-Front-To-Back-v2.0


<br/>

## Dockerizing API (api.anketa.info)

<br/>

    $ docker build ./api -f ./api/Dockerfile -t techhead/api.anketa.info:latest

<br/>

## Dockerizing Client (anketa.info)

<br/>

    $ docker build ./client -f ./client/Dockerfile -t techhead/client.anketa.info:latest

<br/>

## Dockerizing Nginx Proxy

    $ docker build ./proxy -f ./proxy/Dockerfile -t techhead/proxy

<br/>

## Copy Services configs

    $ cd proxy/svc
    $ sudo cp api.anketa.info.service /etc/systemd/system/
    $ sudo cp client.anketa.info.service /etc/systemd/system/
    $ sudo cp proxy.service /etc/systemd/system/


<br/>

## Run as linux service

    $ sudo systemctl enable api.anketa.info.service
    $ sudo systemctl start  api.anketa.info.service
    $ sudo systemctl status api.anketa.info.service

<br/>

    $ sudo systemctl enable client.anketa.info.service
    $ sudo systemctl start  client.anketa.info.service
    $ sudo systemctl status client.anketa.info.service

<br/>

    $ sudo systemctl enable proxy.service
    $ sudo systemctl start  proxy.service
    $ sudo systemctl status proxy.service

<br/>

    $ curl anketa.info


<br/>

API Check:

    $ curl \
    -X GET api.anketa.info/api/profile/github/marley-nodejs \
    | python -m json.tool



<br/>

### Localhost

    $ sudo su -

    # vi /etc/hosts
    192.168.0.11 anketa.info


<br/>

http://anketa.info


<br/>

![Application](/img/pic-svc-01.png?raw=true)


<br/>

![Application](/img/pic-svc-02.png?raw=true)


---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>

