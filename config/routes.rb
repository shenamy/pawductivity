Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  get '/store', to: 'home#store', as: 'store'
  patch '/store', to: 'items#buy', as: 'buy'
  post 'create' => 'tasks#create', as: 'create'
  patch '/', to: 'home#change', as: 'change'
  patch 'delete', to: 'tasks#delete', as: 'delete'
  patch 'complete', to: 'tasks#complete', as: 'complete'
end
