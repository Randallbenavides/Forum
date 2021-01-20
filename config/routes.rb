Rails.application.routes.draw do

  devise_for :users
  resources :post
  get 'post/new'
  root 'post#index'
end
