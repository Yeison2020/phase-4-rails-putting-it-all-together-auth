Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html










  # User controller No using Restful convention for now. 
  get 'users', to: 'users#index'
  post 'signup', to: 'users#create'
  get '/me', to: 'users#show'
end
