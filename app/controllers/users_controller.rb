class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @order = Order.new
  end

end
