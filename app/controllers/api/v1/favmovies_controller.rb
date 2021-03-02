class Api::V1::FavmoviesController < ApplicationController
  before_action :find_movie, only: %i[detail_movie do_favorite]
  before_action :find_user, only: %i[user_movies do_favorite]

  def find_user_or_create
  	user = User.find_by(username: user_name)
  	if user
  		render json: "Login successfully"
  	else
      User.create(username: user_name)
  		render json: "User created and login"	
  	end
  end

  def movies
    render json: all_movies
  end

  def detail_movie
    if @movie
      render json: @movie
    else
      render json: "Not found"
    end  
  end

  def do_favorite
    if @user && @movie
      create_movie
      @movie.fav_users = @movie.fav_users + 1
      @movie.save
      render json: "successfully marked"
    else  
      render json: "Not found"
    end
  end

  def user_movies
    if @user
      render json: @user.movies
    else
      render json: "Not found"
    end  
  end

  private

  def user_name
    params[:name]
  end

  def all_movies
    Movie.all
  end

  def find_movie
    @movie = Movie.find_by(id: params[:id])
  end

  def find_user
    @user = User.find_by(id: params[:user_id])
  end

  def create_movie
    UserMovie.create!(movie_id: @movie.id, user_id: @user.id)
  end
end
