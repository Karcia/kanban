Rails.application.routes.draw do
  resources :projects
  resources :cards
  resources :lists
  devise_for :users

  authenticated :user do
    root to: 'projects#index', as: :authenticated_root
  end

  root 'home#index'

  resources :projects do
    resources :lists
  end

  resources :lists do
    resources :cards
  end
end
