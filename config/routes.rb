Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  resources :posts do
    resources :comments, only: [:create]
  end
  resources :users, only: [:index, :show]
  resources :mypages, only: [:index, :edit, :update]

  root 'posts#index'
end
