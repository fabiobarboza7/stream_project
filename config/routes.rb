Rails.application.routes.draw do

  resources :contracts, only: [:index, :show, :new], path: "contratos"
  resources :finances, only: [:index], path: "financeiro"
  resources :reports, only: [:index], path: "relatorios"
  resources :users, only: [:index], path: "usuarios"

  devise_for :users
  get 'pages/home'
  get '/dashboard', to: "pages#dashboard"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
