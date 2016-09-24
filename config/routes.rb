Rails.application.routes.draw do
  resources :articles

  resources :users

  resources :locations

  resources :messages

  root  "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
