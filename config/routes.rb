Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  resources :posts do
    collection do
      get 'index_list'
      get 'search'
    end
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show]
  resources :mypages, only: [:index, :edit, :update]

  root 'posts#index'

  get '*path', to: 'application#render_404'

end
