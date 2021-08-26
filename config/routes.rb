Rails.application.routes.draw do
  root to: 'sessions#index'
  # get "/sessions/:start" => "sessions#index", as: :start
  get '/sessions/stop' =>  'sessions#stop', as: :stop

  resources :sessions do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
