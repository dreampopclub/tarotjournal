Rails.application.routes.draw do
  resources :entries
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :spreads

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
