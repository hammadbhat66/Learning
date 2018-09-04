Rails.application.routes.draw do
  resources :users do
  	get 'googlemaps', on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
