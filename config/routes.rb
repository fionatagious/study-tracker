Rails.application.routes.draw do
  root to: 'sessions#index'

  # http verb 'path' => controller#action
  get '/sessions/start' => 'sessions#start', as: :start
  get '/sessions/stop' => 'sessions#stop', as: :stop

  # new session form on 'new session' page
  get '/sessions/new' => 'sessions#new', as: :new

  # saved session info on 'new session' page
  post '/sessions/new' => 'sessions#create', as: :save

  resources :sessions do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
