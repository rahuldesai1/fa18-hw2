Rails.application.routes.draw do
  root "main#index"
  get 'cities/view', to: 'cities#view'
  get 'cities/new', to: 'cities#new'
  get 'cities/update', to: 'cities#update'

  post 'cities/create', to: 'cities#create'
  post 'cities/update', to: 'cities#update'
end