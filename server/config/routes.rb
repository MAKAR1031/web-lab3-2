Rails.application.routes.draw do
  get '/todos', to: 'todos#index'
  post '/todos/add', to: 'todos#add'
  patch '/todos/priority', to: 'todos#change_priority'
  delete '/todos', to: 'todos#delete_all'
end
