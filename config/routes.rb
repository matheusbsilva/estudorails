Rails.application.routes.draw do
  get 'users/new'

  get 'home/index'

  resources :alumns
  
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
