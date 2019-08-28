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

<br/>

    $ curl -d '{"name":"marley", "email":"marley@pochta.ru", "password": "password1"}' \
    -H "Content-Type: application/json" \
    -X POST localhost:5000/api/users \
    | python -m json.tool

<br/>

### 012 Implementing JWT

    $ npm install --save jsonwebtoken

delete from mongodb.com users collection, then create new

    $ curl -d '{
        "name":"marley", 
        "email":"marley@pochta.ru", 
        "password": "password1"
    }' \
    -H "Content-Type: application/json" \
    -X POST localhost:5000/api/users \
    | python -m json.tool

<br/>

### 013 Custom Auth Middleware JWT Verify

    $ curl -H "X-Auth-Token: <Token ID>" localhost:5000/api/auth | python -m json.tool

<br/>

### 014 User Authentication Login Route

    $ curl -d '{ 
        "email":"marley@pochta.ru", 
        "password": "password1"
    }' \
    -H "Content-Type: application/json" \
    -X POST localhost:5000/api/auth \
    | python -m json.tool


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

<br/>

### 020 Add Profile Experience

    $ curl -d '{ 
        "title":"Instructor & Senior Developer",
        "company": "Traversy Media",
        "location": "Moscow",
        "from": "8-10-2010",
        "current": true,
        "description": "Create projects and courses on web development"
    }' \
    -H "Content-Type: application/json" \
    -H "X-Auth-Token: <Token ID>" \
    -X PUT localhost:5000/api/profile/experience \
    | python -m json.tool


<br/>

### 021 Delete Profile Experience

    $ curl -d '{ 
        "title":"Web Developer ",
        "company": "Tech Guy Web Solutions",
        "location": "Sankt Petersburg",
        "from": "1-5-2006",
        "to": "1-7-2009",
        "description": "Fuul stack web dev"
    }' \
    -H "Content-Type: application/json" \
    -H "X-Auth-Token: -H "X-Auth-Token: <Token ID>" \
    -X PUT localhost:5000/api/profile/experience \
    | python -m json.tool


<br/>

    $ curl \
    -H "X-Auth-Token: <Token ID>" \
    -X DELETE localhost:5000/api/profile/experience/<Profile ID> \
    | python -m json.tool


<br/>

### 022 Add Delete Profile Education

    $ curl -d '{ 
        "school":"Nothern Esses College",
        "degree": "Associates Degree",
        "fieldofstudy": "Computer Science",
        "from": "8-08-2003",
        "from": "3-4-2005",
        "description": "Got Associates in computer science"
    }' \
    -H "Content-Type: application/json" \
    -H "X-Auth-Token: <Token ID>" \
    -X PUT localhost:5000/api/profile/education \
    | python -m json.tool

<br/>

    $ curl -d '{ 
        "school":"Test School",
        "degree": "Associates Degree",
        "fieldofstudy": "Computer Science",
        "from": "8-08-2003",
        "from": "3-4-2005",
        "description": "Got Associates in computer science"
    }' \
    -H "Content-Type: application/json" \
    -H "X-Auth-Token: <Token ID>" \
    -X PUT localhost:5000/api/profile/education \
    | python -m json.tool


<br/>

    $ curl \
    -H "X-Auth-Token: <Token ID>" \
    -X DELETE localhost:5000/api/profile/education/<Education ID> \
    | python -m json.tool

<br/>

### 023 Get Github Repos For Profile

    $ npm install --save request

    $ curl \
    -X GET localhost:5000/api/profile/github/marley-nodejs \
    | python -m json.tool


<br/>

## 05 Post API Routes

<br/>

### 024 Creating The Post Model

<br/>

### 025 Add Post Route

    $ curl -d '{ 
        "email":"marley@pochta.ru", 
        "password": "password1"
    }' \
    -H "Content-Type: application/json" \
    -X POST localhost:5000/api/auth \
    | python -m json.tool

<br/>

    $ curl -d '{ 
        "text":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    }' \
    -H "Content-Type: application/json" \
    -H "X-Auth-Token: <Token ID>" \
    -X POST localhost:5000/api/posts \
    | python -m json.tool


<br/>

### 026 Get Delete Post Routes

    $ curl \
    -H "X-Auth-Token: <Token ID>" \
    -X GET localhost:5000/api/posts \
    | python -m json.tool

<br/>

    $ curl \
    -H "X-Auth-Token: <Token ID>" \
    -X GET localhost:5000/api/posts/<Post Id> \
    | python -m json.tool

<br/>

    $ curl \
    -H "X-Auth-Token: <Token ID>" \
    -X DELETE localhost:5000/api/posts/<Post Id> \
    | python -m json.tool



---

**Marley**

<a href="https://jsdev.org">jsdev.org</a>

