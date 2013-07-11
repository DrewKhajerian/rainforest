Rainforest::Application.routes.draw do
  root :to => 'products#index'

  resources :products do
    resources :reviews, :except => [:index]
  end

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

end
