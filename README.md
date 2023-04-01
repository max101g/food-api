# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# food-api

### Tables && Models && Serializers ###
 * Users table
 * Posts table
 * Userposts table

### Controllers ###
 * Users controller
 * Posts controller
 * Userposts controller
 * Sessions controller

### Relationships ###
 * A user has many userposts 
 * A user has many posts through userposts
 * A userpost belongs to a user && also belongs to a post
 * A post has one user through the userpost

### Authentication && Authorization ###
 * A user is authenticated by checking if the user exist.
 * If a user exists, the password set is cross checked with the stored data.
 * After cross checking and the password matches, a session is set with the user's id. 

   <!-- If a user does not exist -->

 * If a user doesn't exist, they are allowed to create post their data
 * The password that they provide is hashed via the "has_secure_password"
 * Then the user is given a session which is set as the user's id

