Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beds do
    resources :bookings, only: [:create, :new, :edit, :update]
  end
  resources :bookings, except: [:create, :new, :edit, :update]

end
