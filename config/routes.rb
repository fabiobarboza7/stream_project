Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  get '/dashboard', to: "pages#dashboard"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
