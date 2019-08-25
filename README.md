# [Brad Traversy] MERN Stack Front To Back: Full Stack React, Redux &amp; Node.js [2019, ENG]

**Original src:**  
https://github.com/bradtraversy/devconnector_2.0

<br/>

## 02 Express MongoDB Setup

    $ mkdir api
    $ cp api

    $ npm init -y
    $ npm install --save express mongoose config

    $ npm install --save-dev nodemon

    $ npm run server

    $ curl localhost:5000

    $ curl localhost:5000/api/users

<br/>

## 03 User API Routes JWT Authentication
 
<br/>

### 010 Request  Body Validation

    $ npm install --save mongoose express-validator

<br/>

    $ curl localhost:5000/api/users -X POST -H "Content-Type: application/json" -d '{"name":"marley", "email":"marley@pochta.ru", "password": "password1"}'

<br/>

### 011 User Registration

    $ npm install --save gravatar bcryptjs

    $ curl localhost:5000/api/users -X POST -H "Content-Type: application/json" -d '{"name":"marley", "email":"marley@pochta.ru", "password": "password1"}'

<br/>

### 012 Implementing JWT

    $ npm install --save jsonwebtoken

delete from mongodb.com users collection

    $ curl localhost:5000/api/users -X POST -H "Content-Type: application/json" -d '{"name":"marley", "email":"marley@pochta.ru", "password": "password1"}'

<br/>

### 013 Custom Auth Middleware JWT Verify


    $ curl -H "X-Auth-Token: <Token ID>" http://localhost:5000/api/auth


---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>
