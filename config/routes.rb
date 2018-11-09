Rails.application.routes.draw do
  resources :visitors
  resources :photos
  root to: "visitors#index"
  
  devise_for :users
  resources :users
  get "/users" => "users#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
