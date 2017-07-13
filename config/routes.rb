Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books do
    resources :orders, only: [:create]
  end
  resources :orders, only: [:destroy]
  resources :users, only: [:show, :edit]
  mount Attachinary::Engine => "/attachinary"
end
