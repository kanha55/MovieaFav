Rails.application.routes.draw do
  get 'admin' => 'users#index'

  resources :users, only: [:show, :destroy]
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
