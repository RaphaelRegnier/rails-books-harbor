class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :results]
  ## it skips the sign-in action only for index and show pages
  def show
    #THE FORM FOR THE NEW ORDER IS ON THE SHOW PAGE OF THE BOOK
    @order = Order.new()
  end

  def index
    @books = Book.all
    @users = User.all
    if params[:title]
      redirect_to results_books_path
    end
  end

  def new
    @book = Book.new()
  end

  def create
    @book = Book.create(book_params)
    @book.user = current_user
    if @book.save
      redirect_to books_path
    else
      render :new
    end
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

  def results
    @books = Book.search(params[:title]).order("created_at DESC")
    @users = []
    @books.each do |book|
      @users << book.user
    end
    # @users = User.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@users.uniq) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :description, :price, :category, :author, :photo)
  end

end
