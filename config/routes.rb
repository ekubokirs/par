Par::Application.routes.draw do
  get 'login' =>  'session#new'
  get 'login' =>  'session#create'
end
