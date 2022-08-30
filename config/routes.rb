Rails.application.routes.draw do
  

  root to: 'questions#random'
  


  get '/login' => 'session#new'           # shows login form
  post '/login' => 'session#create'       # submit login, perform login, redirect
  delete '/login' => 'session#destroy'    # logout link - perform logout


  post '/tallies/question/:question_id/:choice' => 'tallies#create', as: 'tally'
  get '/questions/random' => 'questions#random', as: 'random_question' 

  resources :questions, :users, :genres, :tallies

end
