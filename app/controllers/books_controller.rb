class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]
  ## it skips the sign-in action only for index and show pages
  def show
    #THE FORM FOR THE NEW ORDER IS ON THE SHOW PAGE OF THE BOOK
    @order = Order.new()
  end

  def index
    @books = Book.all()
  end

  def new
    @book = Book.new()
  end

  def create
    @book = Book.create(book_params)
    redirect_to books_path
    #SHOULD DO THE CONDITION WITH SAVE AND RENDER NEW
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to book_path
  end

  def destroy
    @book.destroy
    redirect_to(:back)
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :description, :price, :category, :author, :photo)
  end

end
