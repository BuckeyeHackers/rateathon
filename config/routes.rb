Rails.application.routes.draw do
  resources :users, :orgs

  resources :events do
    resources :reviews
  end
end
