Rails.application.routes.draw do
  resources :articles
  resources :subpages
  resources :pages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "homes#index"

end
