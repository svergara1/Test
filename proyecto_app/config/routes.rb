Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

  root 'home#index'

  resources :songs
  resources :albums
  resources :artists
  resources :bands

  devise_for :users

  #root: 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
