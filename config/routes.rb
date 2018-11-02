Rails.application.routes.draw do
  resources :visitors
  root to: "visitors#cover"
  devise_for :users
  resources :photos
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "/cover" => "visitors#cover"
  get "/carousel" => "visitors#carousel"
  get "/album" => "visitors#album"
  get "/pricing" => "visitors#pricing"
  get "/jumbotron" => "visitors#jumbotron"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
