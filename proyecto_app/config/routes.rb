Rails.application.routes.draw do
  root :to => 'home#index'

  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :user do
    #unauthenticated :user do
      #redirect_to controller: 'static_pages', action: 'show'
      #root "home#index", page: "index"
      #root :to => 'devise/sessions#new', as: :unauthenticated_root
    #end
    #authenticated :user do
    resources :users

    root :to => 'home#index'
    #end
  end


  
  get 'profiles/show'
  get 'relationships/follow_user'
  get 'relationships/unfollow_user'
  get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
  get ':user_name/show', to: 'profiles#show', as: :profile
  post ':id/follow_user', to: 'relationships#follow_user', as: :follow_user
  post ':id/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user
  #delete 'users/sign_out', to: "devise/sessions#new", as: :logout

  resources :songs
  resources :albums
  resources :artists
  resources :bands
  resources :playlists

  #root: 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end