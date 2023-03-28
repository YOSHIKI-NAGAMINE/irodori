Rails.application.routes.draw do
  devise_for :users
  root to:"users#index"
  resources :users, only: [:show] do
    resources :achevements, only: [:new, :create, :edit, :update]
  end
  resources :sioris, only: [:index, :new, :create, :show] do
    resources :messages, only: [:create]
    resources :schedules, only: [:new, :create, :destroy, :edit, :update] do
      resources :albums, only: [:new, :create, :index, :destroy, :edit, :update]
    end
  end
end