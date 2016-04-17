Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'

  resources :users, :organizations
  resources :events do
    resources :reviews
  end
end
