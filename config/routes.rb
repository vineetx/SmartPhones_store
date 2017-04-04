Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :products
  root 'home#show'# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/new', to: 'home#new'
  get 'carts/show', to: 'cart#show'
  post 'line_item', to: 'line_item#create'
  delete 'line_item/destroy', to: 'line_item#destroy'
end
