class Movie < ApplicationRecord

  serialize :genre, Array
  GENRE = ["Action","Adventure","Animation","Biography", "Comedy", "Crime", "Documentary", "Drama", "Fantasy", "History" ,"Horror", "Musical", "Mystery", "Romance", "Sci-Fi", "Thriller", "War", "Western"]
end
