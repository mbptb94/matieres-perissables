Rails.application.routes.draw do
  get 'pages/asics'
  get 'pages/cablage'
  get 'pages/da'
  get 'pages/coating'
  get 'asics', to: 'pages#asics'
  get 'cablage', to: 'pages#cablage'
  get 'da', to: 'pages#da'
  get 'coating', to: 'pages#coating'
  
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
root "home#index"

end
