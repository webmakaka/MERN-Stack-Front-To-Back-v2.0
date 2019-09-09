# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [2019, ENG]

**Original src:**  
https://github.com/bradtraversy/devconnector_2.0

<br/>

## [API](./api/Readme.md)

## [CLIENT](./client/Readme.md)


<br/>

# (NOT Tested FOR NOW!!!)

## Dockerizing API (api.anketa.info)

<br/>

    # cd api
    # docker build -t marley/api.anketa.info -f Dockerfile .

<br/>

## Dockerizing Client (anketa.info)

<br/>

    # cd client
    # docker build -t marley/anketa.info -f Dockerfile .


<br/>

## Dockerizing Proxy


    # cd proxy/svc
    # cp api.anketa.info.service /etc/systemd/system/api.anketa.info.service
    # cp anketa.info.service /etc/systemd/system/anketa.info.service


<br/>

## Run as linux service

    # systemctl enable api.anketa.info.service
    # systemctl start  api.anketa.info.service
    # systemctl status api.anketa.info.service

<br/>

    # systemctl enable anketa.info.service
    # systemctl start  anketa.info.service
    # systemctl status anketa.info.service


<br/>

## Setup proxy

    # cd proxy
    # docker build -t marley/proxy -f Dockerfile .

<br/>

    # cp proxy.service /etc/systemd/system/proxy.service

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

