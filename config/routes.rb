Rails.application.routes.draw do
  devise_for :users
  root to: "stuffs#index"

  resources :users, only: [:edit, :update]

end
