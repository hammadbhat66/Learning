Rails.application.routes.draw do
  get 'students/index'
  root 'students#index'
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/something" , to: 'students#create'
end
