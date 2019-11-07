Rails.application.routes.draw do
  root 'posts#index'
  resources :posts do
  resources :mypages, only: [:index, :edit, :update] do
  end
end
end
