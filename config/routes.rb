Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :kids do
    patch :moana_avatar, on: :member
    patch :pocahontas_avatar, on: :member
    patch :mogli_avatar, on: :member
    patch :tarzan_avatar, on: :member
    resources :games, only: [:index, :show] do
      patch :completed, on: :member
      member do
        get :lecture
      end
    end
  end

end
