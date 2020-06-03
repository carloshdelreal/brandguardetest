Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#home'

  namespace :api do
    namespace :v1 do
      resources :user, only: [:index]
      resources :country, only: [:index]
      resources :chain, only: [:index, :create]
      resources :restaurant, only: [:index, :create, :delete] do
        resources :reviews, only: [:index]
      end
    end
  end


  get '*path', to: redirect('/')
end
