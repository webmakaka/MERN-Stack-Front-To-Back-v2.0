# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [2019, ENG]

# Run Application by Kubernetes (IN DEVELOPMENT)

<a href="https://sysadm.ru/linux/servers/containers/kubernetes/kubeadm/prepared-cluster/">Scripts to run kubernetes cluster</a>

<a href="https://sysadm.ru/linux/servers/containers/kubernetes/kubeadm/metal-load-balancer/">MetalLB Load Balancer in Kubernetes</a>

<br/>

### Localhost

    $ sudo vi /etc/hosts

    192.168.0.21 anketa.info
    192.168.0.22 api.anketa.info

<br/>

    $ cd ~
    $ git clone https://github.com/marley-nodejs/MERN-Stack-Front-To-Back-v2.0
    $ cd MERN-Stack-Front-To-Back-v2.0

<br/>

### Client

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
      - ip: "192.168.0.22"
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
      - ip: "192.168.0.21"
        hostnames:
        - "api.anketa.info"
```

<br/>

    $ kubectl expose deploy client-deployment --port 80 --type LoadBalancer

<br/>

    $ kubectl get svc client-deployment
    NAME                TYPE           CLUSTER-IP      EXTERNAL-IP    PORT(S)        AGE
    client-deployment   LoadBalancer   10.109.175.29   192.168.0.21   80:31689/TCP   6s



<br/>

http://192.168.0.21

<br/>

    // to delete client resources
    $ kubectl delete svc client-deployment
    $ kubectl delete -f kubernetes/client-deployment.yaml


<br/>

### API

<br/>

    $ kubectl apply -f kubernetes/api-deployment.yaml

<br/>

    $ kubectl get deploy
    NAME                READY   UP-TO-DATE   AVAILABLE   AGE
    api-deployment      3/3     3            3           31s
    client-deployment   3/3     3            3           8m59s


<br/>

    $ kubectl edit deployment api-deployment

<br/>

Need to set right ip for ds337418.mlab.com

<br/>

Inside spec.template.spec add hostAliases


```
  template:
    metadata:
      creationTimestamp: null
      labels:
        component: web
    spec:
      hostAliases:
      - ip: "18.234.114.11"
        hostnames:
        - "ds337418.mlab.com"
```

<br/>

    $ kubectl expose deploy api-deployment --port 80 --target-port 5000 --type LoadBalancer

<br/>

    $ kubectl get svc api-deployment
    NAME             TYPE           CLUSTER-IP      EXTERNAL-IP    PORT(S)        AGE
    api-deployment   LoadBalancer   10.99.229.105   192.168.0.22   80:31614/TCP   6s

<br/>

    $ kubectl get pods
    NAME                                 READY   STATUS    RESTARTS   AGE
    api-deployment-77dbfc7dd9-49hbc      1/1     Running   0          35s
    api-deployment-77dbfc7dd9-hldv9      1/1     Running   0          39s
    api-deployment-77dbfc7dd9-rkjcb      1/1     Running   0          30s
    client-deployment-787b8cdbbc-qc2ht   1/1     Running   0          125m
    client-deployment-787b8cdbbc-r2kfq   1/1     Running   0          125m
    client-deployment-787b8cdbbc-xcbb6   1/1     Running   0          125m


<br/>

    $ kubectl get pods api-deployment-77dbfc7dd9-49hbc --template='{{(index (index .spec.containers 0).ports 0).containerPort}}{{"\n"}}'
    5000


<br/>

**API Check:**

    $ curl -X POST -H "Content-Type: application/json" -d '{"name":"marley", "email":"marley@pochta.ru", "password": "password1"}' api.anketa.info/api/users

<br/>

    $ curl -X GET -H "Content-Type: application/json" api.anketa.info/api/profile


<br/>

    // to delete api resources
    $ kubectl delete svc api-deployment
    $ kubectl delete -f kubernetes/api-deployment.yaml


<!--
    kubectl uncordon node1.k8s && kubectl cordon node2.k8s
-->

---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>

