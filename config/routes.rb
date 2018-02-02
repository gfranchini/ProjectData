Rails.application.routes.draw do
  resources :environments
  resources :projects

  resources :projects do
    resources :environments
  end

  root to: 'projects#index'
end
