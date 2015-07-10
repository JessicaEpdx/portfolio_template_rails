Rails.application.routes.draw do
  devise_for :users
  root to: 'skills#index'

  resources :skills do
    resources :projects
  end

  resources :projects, only:[:index]
  resources :users
  resources :posts do
    resources :comments
  end
end
