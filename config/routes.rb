Rails.application.routes.draw do
 


  namespace :api do
  namespace :v1 do
 
#PROBABLY WON'T USE 
  #     get 'session/new'
  #     get 'session/create'
  #     get 'session/show'
  #     get 'session/edit'
  #     get 'session/update'
  #     get 'session/destroy'
  #     get 'session/index'

#SESSION ROUTES 
get 'signup', to: 'session#signup'
#SIGNUP POSTS TO USERS CREATE
post 'signup', to: "users#create"
get 'login'
post 'login', to: 'session#create'
get'get_current_user', to: 'session#get_current_user'
delete 'logout', to: 'session#destroy'
get 'auth/:provider/callback', to: 'sessions#create'
get '/login', to: 'sessions#new'

post 'products/create', to: 'products#create'

#USERS DELETE NOT YET IMPLEMENTED
delete 'users/delete', to: 'users#destroy'
#ONLY USED FOR USER AUTH SIGNUP
 devise_for :users
 resources :users do
    resources :products
    resources :categories
    resources :products
    resources :carts
    resources :images
  end


get 'products', to: 'products#index'
  resources :carts
  resources :products 
  resources :images
  resources :categories 

end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
