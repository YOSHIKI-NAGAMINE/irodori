Rails.application.routes.draw do
  devise_for :users
  root to:"users#index"
  resources :users, only: [:show]
  resources :sioris, only: [:index, :new, :create, :show] do
    resources :schedules, only: [:new, :create, :destroy, :edit, :update]
    resources :messages, only: [:new, :create]
  end
end