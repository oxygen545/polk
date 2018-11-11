Rails.application.routes.draw do
  resources :items
  resources :visitors
  resources :photos
  root to: "visitors#index"
  resources :users
  
  devise_for :users
  get "/example" => "users#example"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
