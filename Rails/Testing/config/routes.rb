Rails.application.routes.draw do
  get 'categories/index'
  root 'categories#index'
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
