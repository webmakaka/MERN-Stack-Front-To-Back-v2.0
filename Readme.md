# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [ENG, 2019]

**Original src:**  
https://github.com/bradtraversy/devconnector_2.0

<br/>


<br/>

## How to run the final app with docker-compose

```
$ docker-compose up --build
```

localhost:3000

<br/>

## How to run the final app with minikube


Minikube, Kubectl, Docker, Skaffold should be installed.

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

## Run App in "Production mode"

    $ kubectl apply -f ./k8s
    // $ kubectl delete -f ./k8s/

<br/>

## Run App in development mode with Skaffold

<br/>

### Skaffold installation

    $ curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64

    $ chmod +x skaffold
    $ sudo mv skaffold /usr/local/bin

<br/>

    $ cd skaffold

    $ docker login

Need update webmakaka/mern-stack-front-to-back-v2\*\*\* on your data in scripts

    $ skaffold dev

<br/>

### Result

    $ kubectl get pods
    NAME                                                            READY   STATUS    RESTARTS   AGE
    mern-stack-front-to-back-v2-api-deployment-6f76df5df8-2cbpk     1/1     Running   0          13m
    mern-stack-front-to-back-v2-client-deployment-5dc54d6c6-7x9cc   1/1     Running   0          13m

<br/>

chrome browser --> https://mern-stack-front-to-back-v2.dev/

<br/>

type: **thisisunsafe** in the window with security warning.

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

## [Development step by step](./docs/Development.md)

<br/><br/>

---

<br/>

**Marley**

Any questions in english: <a href="https://jsdev.org/chat/">Telegram Chat</a>  
Любые вопросы на русском: <a href="https://jsdev.ru/chat/">Телеграм чат</a>
