Rails.application.routes.draw do
  get 'admin' => 'users#index'

  resources :users, only: [:index, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
