# config/routes.rb
Rails.application.routes.draw do
  
  # Books routes 
  get 'books/index'
  get 'books' => 'books#index'
  #Create book
  post 'books' => 'books#create'
  #Show book
  get 'books/:id' => 'books#show'
  #Update book
  patch 'books/:id' => 'books#update'
  #Delete book
  delete 'books/:id' => 'books#destroy'

  # Pages routes
  root 'pages#home' 
  get 'castor/about' => 'pages#about'
  get 'about' => 'pages#about'
end
