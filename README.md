# README

you can hit the application at 
https://pcsl-backend.onrender.com

* $ rake db:setup
* $ bin/rails server

## to add : 

* dropdown options
* 


## add user
* POST to /signup
- 422 if already exists
{
  "user": {
    "email": "chris@test.com",
    "password": "password"
  }
}

* POST to /login

* GET to /current_user
  * with "Authorization" : "Bearer e....."
helpful: 
https://dakotaleemartinez.com/tutorials/devise-jwt-api-only-mode-for-authentication/
