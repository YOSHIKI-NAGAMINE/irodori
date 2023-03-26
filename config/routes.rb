Rails.application.routes.draw do
  devise_for :users
  root to:"users#index"
  resources :users, only: [:show]
  resources :sioris, only: [:index, :new, :create, :show] do
    resources :messages, only: [:create]
    resources :schedules, only: [:new, :create, :destroy, :edit, :update] do
      resources :albums, only: [:new, :create, :index]
    end
  end
end