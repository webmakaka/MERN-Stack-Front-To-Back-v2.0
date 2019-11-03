# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [2019, ENG]

# Run Application by Minikube (Kubernetes) (IN DEVELOPMENT)

    $ minikube version
    minikube version: v1.4.0

<br/>

    $ minikube start
    $ minikube addons enable ingress

<br/>

    $ kubectl create -f ./minikube

<br/>

    $ kubectl get pods
    NAME                                 READY   STATUS    RESTARTS   AGE
    api-deployment-55cbfdbb97-7wm76      1/1     Running   0          80s
    client-deployment-7b896c75fc-8jssc   1/1     Running   0          80s
    client-deployment-7b896c75fc-b6c5j   1/1     Running   0          80s
    client-deployment-7b896c75fc-gn2vs   1/1     Running   0          80s

<br/>

    $ kubectl get services
    NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
    api-cluster-ip-service      ClusterIP   10.105.35.214   <none>        5000/TCP   42m
    client-cluster-ip-service   ClusterIP   10.96.208.184   <none>        3000/TCP   42m
    kubernetes                  ClusterIP   10.96.0.1       <none>        443/TCP    91m

<br/>

    $ kubectl describe svc client-cluster-ip-service
    Name:              client-cluster-ip-service
    Namespace:         default
    Labels:            <none>
    Annotations:       <none>
    Selector:          component=web
    Type:              ClusterIP
    IP:                10.109.223.81
    Port:              <unset>  3000/TCP
    TargetPort:        80/TCP
    Endpoints:         172.17.0.10:80,172.17.0.8:80,172.17.0.9:80
    Session Affinity:  None
    Events:            <none>

<br/>

    $ minikube ip
    192.168.99.141

<br/>

    $ sudo vi /etc/hosts
    192.168.99.141 anketa.info

<br/>

http://anketa.info

Not works!!!

<br/>

    $ curl 192.168.99.141:3000
    curl: (7) Failed to connect to 192.168.99.141 port 3000: Connection refused

---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>

Any questions on eng: https://t.me/jsdev_org  
Любые вопросы на русском: https://t.me/jsdev_ru
