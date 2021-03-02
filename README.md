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

API documentation

- Check if user exists in the database
	URL :- https://moviefav.herokuapp.com/api/v1/find_user_or_create?name=xyz
	Parameter :- name
	type :- GET

- Get the list of all the movies in the database
	URL :- https://moviefav.herokuapp.com/api/v1/movies
	type :- GET

- Get the details of a specific movie in the database, including the number of 				users that favorited it	
	URL :- https://moviefav.herokuapp.com/api/v1/detail_movie?id=2
	Parameter :- id  #here id is movie_id
	type :- GET

- Get list of favorite movies for a specific user
	URL :- https://moviefav.herokuapp.com/api/v1/user_movies?user_id=2
	Parameter :- user_id
	type :- GET

- Favorite a specific movie (for a specific user)
	URL :- https://moviefav.herokuapp.com/api/v1/do_favorite?id=2&user_id=2
	Parameter :- id, user_id #here id is movie_id
	type :- GET


