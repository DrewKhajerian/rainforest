Rainforest::Application.routes.draw do

  
 

  # get "sessions/new"

  # get "sessions/create"

  # get "sessions/destroy"

  resources :products
  resources :users, :only => [:new, :create]
  resources :sessions, :only => [:new, :create]

  root :to => 'products#index'

   # get "users/new"

  # get "products/index"
  # get "products/show"
  # get "products/new"
  # get "products/edit"

end
