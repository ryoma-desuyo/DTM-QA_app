Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :mypages, only: [:index, :edit, :update]
end
