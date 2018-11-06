Rails.application.routes.draw do
  resources :visitors
  resources :photos
  root to: "visitors#cover"
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "/cover" => "visitors#cover"
  get "/features" => "visitors#features"
  get "/static_pages" => "visitors#static_pages"
  get "/pricing" => "visitors#pricing"
  get "/jumbotron" => "visitors#jumbotron"
  get "/tech_stack" => "visitors#tech_stack"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
