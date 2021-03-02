class Movie < ApplicationRecord
  has_many :user_movies
  has_many :users, through: :user_movies

  serialize :genre, Array
  GENRE = ["Action","Adventure","Animation","Biography", "Comedy", "Crime", "Documentary", "Drama", "Fantasy", "History" ,"Horror", "Musical", "Mystery", "Romance", "Sci-Fi", "Thriller", "War", "Western"]
end
