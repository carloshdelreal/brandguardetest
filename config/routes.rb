Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root 'home#home', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
    get 'sign_out', to: 'devise/sessions#destroy'
    get 'forgot_password', to: 'devise/passwords#new'
    get 'reset_password', to: 'devise/passwords#edit'
  end

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
