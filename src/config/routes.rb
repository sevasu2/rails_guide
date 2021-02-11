Rails.application.routes.draw do

  get 'welcome/index'

  resources :articles
  resources :comments
end
