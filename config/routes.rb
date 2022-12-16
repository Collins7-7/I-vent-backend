Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  get "/users", to: "users#index"
  delete "/users/:id", to: "users#destroy"
  patch "/users/:id", to: "users#update"


  


  # get '/hello', to: 'application#hello_world'
end
