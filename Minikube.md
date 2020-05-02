# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [2019, ENG]

# Run Application by Minikube (Kubernetes) (IN DEVELOPMENT)

    $ minikube version
    minikube version: v1.4.0

<br/>

    $ minikube start
    $ minikube addons enable ingress

<br/>

    $ mkdir -p ~/projects/dev/js/nodejs/
    $ cd ~/projects/dev/js/nodejs/
    $ git clone https://github.com/marley-nodejs/MERN-Stack-Front-To-Back-v2.0
    $ cd ~/projects/dev/js/nodejs/MERN-Stack-Front-To-Back-v2.0

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

    // Wainting for address assignment
    $ kubectl get ingress
    NAME              HOSTS         ADDRESS     PORTS   AGE
    ingress-service   anketa.info   10.0.2.15   80      102s

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

### Debugging

    $ kubectl get pods -n kube-system

    $ kubectl describe pods -n kube-system nginx-ingress-controller-57bf9855c8-gnvmb

    $ kubectl logs -n kube-system nginx-ingress-controller-57bf9855c8-gnvmb

    $ kubectl exec -it -n kube-system nginx-ingress-controller-57bf9855c8-gnvmb cat /etc/nginx/nginx.conf

---

<br/>

**Marley**

Any questions on eng: https://jsdev.org/chat/  
Любые вопросы на русском: https://jsdev.ru/chat/