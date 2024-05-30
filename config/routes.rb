Rails.application.routes.draw do
  devise_for :users

  # Routes pour le panier
  get 'cart', to: 'carts#show', as: 'cart'
  get 'add_to_cart/:product_id', to: 'carts#add_item', as: 'add_to_cart'
  delete 'remove_item', to: 'carts#remove_item', as: 'remove_item'

  # Routes pour la liste de souhaits
  get 'wishlist', to: 'wishes#show'

  # Routes pour les paiements
  get 'payment', to: 'payments#new'
  post 'payment', to: 'payments#create'

  # Routes principales
  root 'home#index'
  resources :events, only: [:new, :create, :index, :show]
  resources :products, only: [:index, :show]
  resources :users, only: [:show, :edit, :update]

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
end
