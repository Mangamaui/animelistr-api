Rails.application.routes.draw do
  resources :shows
  resources :user_shows
  resources :users, only: :create

  ## custom routes
  match 'users/token', to: 'user_tokens#create', via: :post
  match 'users/info', to: 'users#info', via: :get
end
