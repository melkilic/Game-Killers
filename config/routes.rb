Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/', {to: 'application#homepage'})
  get('/quizzard',to:'application#quizzard')
  post('/users/login', { to: 'users#handle_login' })
  get('/users/login', {to: "users#view_login"} )
  # get('/users/new', {to: "application#homepage"} )
  get("/games",to:"games#index")
  get("/games/new",{to:'games#new'})
  get("/games/pick",{to:'games#pick_game'})
  get("/games/pick/:id",{to:'games#start_game'})
<<<<<<< HEAD
  post('/games/result/:id',{to:'games#create'})
  # post('/games/result/:id',{to:'application#result'})
  get("/games/result",{to:'games#result'})
  
=======
  
  get('/games/result/:id',{to:'games#result'})
  post('/games/result',{to:'games#correct_answers'})
  get("/games/questions",{to:'games#questions'})
>>>>>>> aa09e64fdd8b3add79e3da25bec37474563d60f1
  get("/log_out",{to:"users#log_out"})


  resources :users
  resources :trivia
  resources :questions
  resources :answers
  resources :games
  
  

end
