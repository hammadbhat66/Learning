Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts do
  resources :comments
  	
  	
  end
  get 'mainpage/index'
  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mainpage#index'
  get 'new' => 'mainpage#index'
end
