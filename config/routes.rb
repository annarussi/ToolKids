Rails.application.routes.draw do
  devise_for :users
  root to: "kids#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :kids, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :games, only: [:index, :show]
  end

end
