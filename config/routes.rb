Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  resources :posts do
    collection do
      get 'index_list'
    end
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show]
  resources :mypages, only: [:index, :edit, :update] do
    member do
      get 'favorite'
    end
  end
  resources :searches, only:[:index]

  root 'posts#index'

  get '*path', to: 'application#render_404'

end
