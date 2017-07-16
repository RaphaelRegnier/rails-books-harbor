class UsersController < ApplicationController
  helper_method :order_with_user?
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @order = Order.new
  end


  def order_with_user?
    current_user.orders.each do |order|
      if order.book.user == @user
        return true
        break
      else
        return false
      end
    end
  end

end
