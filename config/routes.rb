Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  root 'posts#index'
  resources :posts
  resources :mypages, only: [:index, :edit, :update]
  resources :profiles, only: [:index]

end
