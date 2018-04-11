Rails.application.routes.draw do
  get 'address/index'

resources :addresses

root 'address#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
