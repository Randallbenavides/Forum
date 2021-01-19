Rails.application.routes.draw do
  resources:post
  get 'post/new'
  root 'post#index'
end
