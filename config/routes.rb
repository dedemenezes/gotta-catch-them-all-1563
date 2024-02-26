Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :trainers, only: [:show] do
    resources :pokemons, only: [:create]
  end

  resources :pokemons, only: :destroy do
    resources :pokemon_types, only: [:new, :create]
  end
end
