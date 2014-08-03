Rails.application.routes.draw do
  devise_for :users
  root to: "homes#show", via: :get
  resource :dashboard, only: [:show]
end
