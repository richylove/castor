# app/controllers/books_controller.rb
class BooksController < ApplicationController
  # Pour la requête get#books
  def index
     @books = Book.all
  end

  # Pour la requête post#books create 
  def create
    Book.create title: params[:title]
    redirect_to "/books"
  end

  # Pour la requête post#books:id show
  def show
    @book = Book.find(params[:id])
  end

  # Pour la requête patch#books:id update
  def update
    Book.find(params[:id]).update title: params[:title]
    redirect_to "/books/#{params[:id]}"
  end

  # Pour la requête delete#books:id delete
  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end
