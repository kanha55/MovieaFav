module MoviesHelper

  def checked(value)
    if @movie.genres 
      @movie.genres.include?value
    else
      false
    end    
  end
end
