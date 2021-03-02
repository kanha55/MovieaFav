class MoviesController < ApplicationController
  before_action :find_movie, only: %i[edit destroy update]

  def index
    @movies = Movie.all
  end

  def create
    movie = Movie.new(movie_params)
    if movie.save
      redirect_to movies_path
    else
      render :new 
    end   
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :new 
    end
  end

  def destroy
  end

  private

  def find_movie
    @movie = Movie.find_by(id: params[:id])
  end

  def movie_params
    params.require(:movie).permit(:name, :year, :director, :main_star, :description, genres: [])
  end
end
