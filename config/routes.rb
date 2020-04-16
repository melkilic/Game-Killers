Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/', {to: 'application#homepage'})
  post('/users/login', { to: 'users#handle_login' })
  # get('/users/login', {to: "application#homepage"} )
  # get('/users/new', {to: "application#homepage"} )
  get("games/pick", to:'games#pick_game')
  get("games/pick/:id", to:'games#pick_game')
  resources :users
  resources :trivia
  resources :questions
  resources :answers
  resources :games

  

end
