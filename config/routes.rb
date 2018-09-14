Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'bands#index'

  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :bands

  resources :bands do
    resources :albums, only: [:new, :index]
  end

  resources :albums, only: [:index,:create, :edit, :show, :update, :destroy]

  resources :albums do
    resources :tracks, only: [:new]
  end

  resources :tracks, only: [:create, :edit, :show, :update, :destroy]

  resources :tracks do
    resources :notes, only: [:new]
  end

  resources :notes, only: [:create, :destroy]

end
