Rails.application.routes.draw do
  resources :mpesas
  post '/stkpush', to: 'mpesas#stkpush'
  post 'stkquery', to: 'mpesas#stkquery'
end
