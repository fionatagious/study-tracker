Rails.application.routes.draw do
  root to: 'sessions#index'
  resources :sessions do
  #   member do
  #     post 'start'
  #   end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
