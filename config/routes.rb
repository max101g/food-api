Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index]
  resources :userposts, only: [:index, :show]
  resources :posts, only: [:index, :show, :create, :update]
  post 'signup', to: 'users#create'
  get 'me', to: 'users#show'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end
