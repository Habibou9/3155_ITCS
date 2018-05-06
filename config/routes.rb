Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy'
  
  resources :meetings
  
resources :addresses do 
  resources :comments
end

root 'address#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
