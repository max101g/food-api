Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show, :create]
  resources :userposts, only: [:index, :show]
  resources :posts, only: [:index, :show]
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end
