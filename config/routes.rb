Rails.application.routes.draw do
  get 'quizzes/home'
  get 'quizzes/quizz'
  get 'quizzes/results'
  
  get '/home', to: 'quizzes#home'
  get '/quizz', to: 'quizzes#quizz'
  get '/results', to: 'quizzes#results'
  
  get "begin", :controller=> "home"
  post "submit", :controller=>"submit"
  post "/quizzes/quizz", :controller=>"quizz"
  
  root 'quizzes#home'
end
