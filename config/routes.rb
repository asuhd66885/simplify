Rails.application.routes.draw do
  devise_for :users
  root to: "stuffs#index"
  resources :users, only:[:index,:edit,:update,:show]
  resources :stuffs, only:[:index,:new,:create,:show]
end
