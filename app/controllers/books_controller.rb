class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def show
  @books = Book.all()
  end

  def index
  end

  def new
    @book = Book.new()
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :description, :price, :category, :author)
  end

end
