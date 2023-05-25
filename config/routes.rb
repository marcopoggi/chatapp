Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "conversations#index"
  resources :conversations do
    resources :messages
  end
end
