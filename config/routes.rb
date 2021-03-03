Rails.application.routes.draw do
  get 'admin' => 'users#index'
  get 'logout' => 'users#logout'

  resources :users, only: [:show, :destroy]
  resources :movies

  namespace :api do
    namespace :v1 do
    	get 'find_user_or_create' => 'favmovies#find_user_or_create'
    	get 'movies' => 'favmovies#movies'
    	get 'detail_movie' => 'favmovies#detail_movie'
    	get 'user_movies' => 'favmovies#user_movies'
    	get 'do_favorite' => 'favmovies#do_favorite'
    end
  end  	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
