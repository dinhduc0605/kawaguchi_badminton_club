Rails.application.routes.draw do
  namespace :admin do
    root "events#index"
    resources :events
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"
  resources :events
  resources :participants
end
