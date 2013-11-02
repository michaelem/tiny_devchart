TinyDevchart::Application.routes.draw do

  devise_for :users
  root :to => 'development_times#index'

  resources :development_times do
  	collection do
  		get 'search'
  	end
  end

  resources :films
  resources :developers
end
