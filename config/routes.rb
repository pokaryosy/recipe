Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users
  resources :menus
  resources :ingredients
  resources :ryouris
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
