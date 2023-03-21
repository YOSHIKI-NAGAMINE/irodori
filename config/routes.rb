Rails.application.routes.draw do
  devise_for :users
  root to:"sioris#index"
end