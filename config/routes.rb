Rails.application.routes.draw do
  root to: 'sessions#index'
  # post "set_session_start" => "sessions#set_session_start"
  # post "set_session_end" => "sessions#set_session_end"

  # get "/sessions/:start" => "sessions#index", as: :start
  # get '/sessions/:stop' =>  'sessions#index', as: :stop

  resources :sessions do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
