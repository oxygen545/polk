Rails.application.routes.draw do
  resources :visitors
  resources :photos
  root to: "visitors#cover"
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "/cover" => "visitors#cover"
  get "/features" => "visitors#features"
  get "/styles" => "visitors#styles"
  get "/pricing" => "visitors#pricing"
  get "/jumbotron" => "visitors#jumbotron"
  get "/technologies" => "visitors#technologies"
  get "/frontend" => "visitors#frontend"
  get "/midleware" => "visitors#middleware"
  get "/backend" => "visitors#frontend"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
