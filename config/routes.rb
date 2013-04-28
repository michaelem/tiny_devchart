TinyDevchart::Application.routes.draw do

  root :to => 'development_times#index'

  resources :development_times
  resources :films
end
