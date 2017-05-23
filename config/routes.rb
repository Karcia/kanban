Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'projects#index', as: :authenticated_root
  end

  root 'home#index'

  resources :projects do
    resources :lists do
      resources :cards
    end
  end

end
