Rails.application.routes.draw do
  
  resources :songs
  resources :albums
  resources :artists
  root 'bands#index'
  resources :bands

  devise_for :users

  #root: 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
