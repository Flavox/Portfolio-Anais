Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "users#home"
  resources :users, only: [:index] do
    get 'cv', on: :collection
    get 'contact', on: :collection
  end
  resources :realisations, only: %i[new create edit update destroy] do
    get 'etudes', on: :collection
    get 'experiences_pro', on: :collection
  end
  resources :photos, only: %i[new create edit update destroy]
  resources :formations, only: %i[new create edit update destroy]
  resources :competences, only: %i[new create edit update destroy]
  resources :bureautiques, only: %i[new create edit update destroy]
end
