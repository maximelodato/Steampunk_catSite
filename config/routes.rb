Rails.application.routes.draw do
  get 'cart/add_to_cart'
  get 'wishlist', to: 'wishes#show'
  post 'add_to_cart/:product_id', to: 'cart#add_to_cart', as: 'add_to_cart'



  get 'payments/new'
  get 'payments/create'
  root 'home#index'
  devise_for :users
  resources :events, only: [:new, :create, :index, :show]
  resources :products, only: [:index, :show]
  # get '/products', to: 'products#index', as: 'products'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/cart', to: 'carts#show', as: 'cart'
  get '/profile', to: 'users#show', as: 'profile'
  get 'payment', to: 'payments#new'
  post 'payment', to: 'payments#create'
end
