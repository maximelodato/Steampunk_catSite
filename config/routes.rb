Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :events, only: [:new, :create, :index, :show]
  get '/products', to: 'products#index', as: 'products'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/cart', to: 'carts#show', as: 'cart'
end
