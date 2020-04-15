Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :trivia
  resources :questions
  resources :answers
  get('/users/login', { to: 'users#view_login' })
  post('/users/login', { to: 'users#handle_login' })
end
