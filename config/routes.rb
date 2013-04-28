TinyDevchart::Application.routes.draw do

  root :to => 'development_times#index'

  resources :development_times
  resources :films, only: [:new, :create]
  resources :developers, only: [:new, :create]
end
