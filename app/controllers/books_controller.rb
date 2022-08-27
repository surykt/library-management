class BooksController < ApplicationController
  def index
    @books = Book.search_by_name_and_author(params[:query])
  end
end
