Rails.application.routes.draw do
  resources :categories
  resources :users
  resources :mpesas
  post '/stkpush', to: 'mpesas#stkpush'
  post 'stkquery', to: 'mpesas#stkquery'



  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  

  
end
