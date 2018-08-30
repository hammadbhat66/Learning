Rails.application.routes.draw do
  resources :posts do
  	get 'myname', :on => :collection
  end
  resources :comments
  get 'comments/index'
  get 'posts/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
