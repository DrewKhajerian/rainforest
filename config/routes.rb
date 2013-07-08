Rainforest::Application.routes.draw do

  
  get "users/new"

  get "users/create"

  resources :products
  resources :users, :only => [:new, :create]

  root :to => 'pictures#index'

  # get "products/index"
  # get "products/show"
  # get "products/new"
  # get "products/edit"

end
