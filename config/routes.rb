Rails.application.routes.draw do
  root to: 'events#index'

  resources :users, :organizations
  resources :events do
    resources :reviews
  end
end
