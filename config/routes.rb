# config/routes.rb
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'sessions#new'  # トップページをログインページに設定

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  post 'guest_login', to: 'sessions#guest_login'
  delete 'guest_logout', to: 'sessions#guest_logout'


  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :cloths
  resources :coordinates, only: [:new, :create] do
    collection do
      get 'random'
    end
  end
  resources :cloth_coordinates, only: [:index, :show, :destroy]
  #get '*not_found' => 'application#routing_error'
  #post '*not_found' => 'application#routing_error'
end
  
