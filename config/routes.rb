Rainforest::Application.routes.draw do

  
  resources :products

  root :to => 'pictures#index'
  
  # get "products/index"
  # get "products/show"
  # get "products/new"
  # get "products/edit"

end
