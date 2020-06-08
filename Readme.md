# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [2019, ENG]

**Original src:**  
https://github.com/bradtraversy/devconnector_2.0

<br/>

<hr/>

<br/>

## How to run the final app

I am working in ubuntu linux 18.04.

Minikube, Kubectl, Docker, Skaffold should be installed.

<br/>

### Skaffold installation

    $ curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64

    $ chmod +x skaffold
    $ sudo mv skaffold /usr/local/bin

<br/>

### Run app in minikube

```
$ {
minikube --profile my-profile config set memory 8192
minikube --profile my-profile config set cpus 4

// minikube --profile my-profile config set vm-driver virtualbox
minikube --profile my-profile config set vm-driver docker

minikube --profile my-profile config set kubernetes-version v1.18.2
minikube start --profile my-profile
}
```

<br/>

    // Enable ingress
    $ minikube addons --profile my-profile enable ingress

<br/>

    $ minikube --profile my-profile ip
    172.17.0.2

<br/>

    $ sudo vi /etc/hosts

```
#---------------------------------------------------------------------
# Minikube
#---------------------------------------------------------------------
172.17.0.2 mern-stack-front-to-back-v2.dev
```

<br/>

    $ kubectl create secret generic jwt-secret --from-literal=JWT_KEY=MY_JWT_SECRET

<br/>

    $ cd skaffold

    $ docker login

Need update webmakaka/mern-stack-the-complite-guide on your data in the scripts

    $ skaffold dev

<br/>

    $ kubectl get pods
    NAME                                                            READY   STATUS    RESTARTS   AGE
    mern-stack-front-to-back-v2-api-deployment-6f76df5df8-2cbpk     1/1     Running   0          13m
    mern-stack-front-to-back-v2-client-deployment-5dc54d6c6-7x9cc   1/1     Running   0          13m

<br/>

chrome browser --> https://mern-stack-front-to-back-v2.dev/

<br/>

type: **thisisunsafe** in window with security warning.

<br/>

**Expected result:**

<br/>

![Application](/img/pic-final-01.png?raw=true)

<br/>

![Application](/img/pic-final-02.png?raw=true)

<br/>

![Application](/img/pic-final-03.png?raw=true)

<br/>

### Delete minikube with project

    $ minikube --profile my-profile stop && minikube --profile my-profile delete

<br/>

<hr/>

<br/>

## [Development step by step](./Development.md)

<br/>

---

<br/>

**Marley**

Any questions on eng: https://jsdev.org/chat/  
Любые вопросы на русском: https://jsdev.ru/chat/
