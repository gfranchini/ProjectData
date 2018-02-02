Rails.application.routes.draw do
  devise_for :users
  resources :environments
  resources :projects

  resources :projects do
    resources :environments
  end

  root to: 'projects#index'
end
