Rails.application.routes.draw do
  resources :cards
  resources :lists
  devise_for :users

  authenticated :user do
    root to: 'lists#index', as: :authenticated_root
  end

  root 'home#index'

end
