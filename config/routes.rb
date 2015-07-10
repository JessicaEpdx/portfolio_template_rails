Rails.application.routes.draw do
  root to: 'skills#index'

  resources :skills do
    resources :projects
  end

  resources :projects, only:[:index] 
end
