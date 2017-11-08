Rails.application.routes.draw do
  resources :shows
  resources :user_shows
  resources :users, only: :create

  match 'users/token', to: 'user_tokens#create', via: :post
end
