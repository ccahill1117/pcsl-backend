# README

you can hit the application at 
https://pcsl-backend.onrender.com

* $ rake db:setup
* $ bin/rails server

## to add : 

* config SSH
* dropdown options
* current szn
  - validation api level
* user reset password
  - reset from CLI for now
* polymorphic szn -> teams -> matches 
* user_registrations -> players
* spam prevention 
  - use a session token to ask a math question?
  - https://github.com/matthutchinson/acts_as_textcaptcha


## add user
* POST to /signup
- 422 if already exists
{
  "user": {
    "email": "",
    "password": ""
  }
}

* POST to /login
* DELETE to /logout
  * with auth in header

* GET to /current_user
  * with "Authorization" : "Bearer e....."
helpful: 
https://dakotaleemartinez.com/tutorials/devise-jwt-api-only-mode-for-authentication/


* serializers
  * https://medium.com/@matt.readout/preparing-for-life-after-active-model-serializers-e40c9f0cd5f2