Rainforest::Application.routes.draw do

  
 

  get "reviews/show"

  get "reviews/edit"

  get "reviews/new"

  # get "sessions/new"

  # get "sessions/create"

  # get "sessions/destroy"

  resources :products do
    resources :reviews, :except => [:index]
  end

  resources :users, :only => [:new, :create]
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => 'products#index'

   # get "users/new"

  # get "products/index"
  # get "products/show"
  # get "products/new"
  # get "products/edit"

end
