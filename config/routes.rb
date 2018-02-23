Rails.application.routes.draw do
  get 'dashboard/show'

  devise_for :users
  root to: 'pets#index'

  get '/strawberries/:rahel', to: 'pages#home'

    resources :pets do
      resources :bookings, only: [:edit, :update, :new, :create]
      end

      resources :bookings, only: [:show, :destroy] do
        resources :reviews, only: [:new, :create]
      end

      resources :dashboard, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
