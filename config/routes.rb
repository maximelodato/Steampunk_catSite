Rails.application.routes.draw do
  # Routes pour le panier
  get 'cart', to: 'carts#show', as: 'cart'
  get 'add_to_cart/:product_id', to: 'carts#add_item', as: 'add_to_cart'
  delete 'remove_from_cart/:product_id', to: 'carts#remove_item', as: 'remove_from_cart'

  # Routes pour la liste de souhaits
  get 'wishlist', to: 'wishes#show'

  # Routes pour les paiements
  get 'payment', to: 'payments#new'
  post 'payment', to: 'payments#create'

  # Routes principales
  root 'home#index'
  devise_for :users
  resources :events, only: [:new, :create, :index, :show]
  resources :products, only: [:index, :show]

  resources :users, only: [:show, :edit, :update]
  # get '/products', to: 'products#index', as: 'products'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/cart', to: 'carts#show', as: 'cart'
  # get '/profile', to: 'users#show', as: 'profile'
  get 'payment', to: 'payments#new'
  post 'payment', to: 'payments#create'

end
