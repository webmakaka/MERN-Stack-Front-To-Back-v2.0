# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [2019, ENG]

**Original src:**  
https://github.com/bradtraversy/devconnector_2.0

<br/>

## [API](./api/Readme.md)

## [CLIENT](./client/Readme.md)


<br/>

# Run application on virtual host 

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

## [Optional step] Dockerizing API (api.anketa.info)

<br/>

    $ docker build ./api -f ./api/Dockerfile -t techhead/api.anketa.info:latest

<br/>

## [Optional step] Dockerizing Client (anketa.info)

<br/>

    $ docker build ./client -f ./client/Dockerfile -t techhead/client.anketa.info:latest

<br/>

## [Optional step] Dockerizing Nginx Proxy

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



<br/>

# Run application in Kubernetes (IN DEVELOPMENT)

<a href="/linux/servers/containers/kubernetes/kubeadm/prepared-cluster/">Скрипты, разворачивающие Single Master Kubernetes Cluster в VirtualBox</a>

<a href="/linux/servers/containers/kubernetes/kubeadm/metal-load-balancer/">MetalLB Load Balancer in Kubernetes</a>


<br/>

    $ kubectl apply -f kubernetes/client-deployment.yaml

<br/>

    $ kubectl get deploy
    NAME                READY   UP-TO-DATE   AVAILABLE   AGE
    client-deployment   3/3     3            3           23s

<br/>

    $ kubectl get pods
    NAME                                 READY   STATUS    RESTARTS   AGE
    client-deployment-867f8b5564-2qzss   1/1     Running   0          20s
    client-deployment-867f8b5564-rl2lr   1/1     Running   0          20s
    client-deployment-867f8b5564-vssht   1/1     Running   0          20s

<br/>

    $ kubectl edit deployment client-deployment

<br/>

Inside spec.template.spec add

```
    spec:
      hostAliases:
      - ip: "192.168.0.20"
        hostnames:
        - "api.anketa.info"
```

To be

```
  template:
    metadata:
      creationTimestamp: null
      labels:
        component: web
    spec:
      hostAliases:
      - ip: "192.168.0.20"
        hostnames:
        - "api.anketa.info"
```

<br/>

    $ kubectl expose deploy client-deployment --port 80 --type LoadBalancer

<br/>

    $ kubectl get svc client-deployment
    NAME                TYPE           CLUSTER-IP      EXTERNAL-IP    PORT(S)        AGE
    client-deployment   LoadBalancer   10.108.103.91   192.168.0.20   80:32406/TCP   23s


<br/>

http://192.168.0.20

<br/>

    // to delete 
    $ kubectl delete svc client-deployment
    $ kubectl delete -f kubernetes/client-deployment.yaml



---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>

