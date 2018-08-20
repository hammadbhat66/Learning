Rails.application.routes.draw do
  devise_for :logins
  get 'logins/index'
  root 'logins#index'
  resources 'logins'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
