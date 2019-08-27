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

    $ curl -X POST -H "Content-Type: application/json" -d '{"name":"marley", "email":"marley@pochta.ru", "password": "password1"}' localhost:5000/api/users

<br/>

### 011 User Registration

    $ npm install --save gravatar bcryptjs

    $ curl -X POST -H "Content-Type: application/json" -d '{"name":"marley", "email":"marley@pochta.ru", "password": "password1"}' localhost:5000/api/users

<br/>

### 012 Implementing JWT

    $ npm install --save jsonwebtoken

delete from mongodb.com users collection

    $ curl -X POST -H "Content-Type: application/json" -d '{"name":"marley", "email":"marley@pochta.ru", "password": "password1"}' localhost:5000/api/users

<br/>

### 013 Custom Auth Middleware JWT Verify

    $ curl -H "X-Auth-Token: <Token ID>" localhost:5000/api/auth | python -m json.tool

<br/>

### 014 User Authentication Login Route

    $ curl -X POST -H "Content-Type: application/json" -d '{ "email":"marley@pochta.ru", "password": "password1"}' localhost:5000/api/auth


<br/>

## 04 Profile API Routes

<br/>

### 015 Creating The Profile Model

<br/>

### 016 Get Current User Profile

    $ curl -H "X-Auth-Token: <Token ID>" localhost:5000/api/profile/me | python -m json.tool

<br/>

### 017 Create Update Profile Routes

    $ curl -d '{ 
        "company":"Marley",
        "status": "Developer",
        "website": "https://marley.org",
        "skills": "HTML, CSS, JS",
        "location": "Moscow, RU",
        "bio": "I am developer",
        "githubusername":"marley-nodejs",
        "twitter":"https://twitter.com",
        "facebook":"https://facebook.com",
        "youtube":"https://youtube"
    }' \
    -H "Content-Type: application/json" \
    -H "X-Auth-Token: <Token ID>" \
    -X POST localhost:5000/api/profile \
    | python -m json.tool


<br/>

### 018 Get All Profiles Profile By User ID

    $ curl \
    -H "X-Auth-Token: <Token ID>" \
    -X GET localhost:5000/api/profile \
    | python -m json.tool

<br/>

    $ curl \
    -H "X-Auth-Token: <Token ID>" \
    -X GET localhost:5000/api/profile/user/<User ID> \
    | python -m json.tool


<br/>

### 019 Delete Profile User

    $ curl \
    -H "X-Auth-Token: <Token ID>" \
    -X DELETE localhost:5000/api/profile \
    | python -m json.tool

---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>
