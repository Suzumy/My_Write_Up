Rails.application.routes.draw do
  resources :writeups
  root to: 'writeups#index'
end
