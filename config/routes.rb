Rails.application.routes.draw do
  resources :users, :organizations

  resources :events do
    resources :reviews
  end
end
