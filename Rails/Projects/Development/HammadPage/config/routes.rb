Rails.application.routes.draw do
  resources :posts
  get 'mainpage/index'
  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mainpage#index'
end
