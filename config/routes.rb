Par::Application.routes.draw do

  resources :events
  resources :users

  #Registration
  get   'register/:code'  => 'registration#new', as: :register
  post  'register/:code'  => 'registration#create'

  #Login
  get 'login' =>  'session#new'
  get 'login' =>  'session#create'

  #Logout
  get    'logout' => 'session#destroy'
  delete 'logout' => 'session#destroy'

  #Password Reset
  get   'reset/:code' =>  'password#edit', as: :reset
  put   'reset/:code' =>  'password#update'
  patch 'reset/:code' =>  'password#update'

  root 'session#homepage'

end
