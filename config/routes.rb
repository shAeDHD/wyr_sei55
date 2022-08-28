Rails.application.routes.draw do
  

  
  root to: 'questions#home'
  
  get '/login' => 'session#new'           # shows login form
  post '/login' => 'session#create'       # submit login, perform login, redirect
  delete '/login' => 'session#destroy'    # logout link - perform logout



  resources :questions, :users, :genres

end
