Rails.application.routes.draw do
  resources :newsletters

  root 'newsletters#index'
end
