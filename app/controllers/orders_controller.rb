class OrdersController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @order = Order.new(order_params)
    @order.book = @book
    @order.user = current_user
    if book_is_available(@order.start_time, @order.end_time, @book)
       @order.save
        redirect_to current_user
    else
      redirect_to book_path(@book)
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to(:back)
  end

  private

  def order_params
    params.require(:order).permit(:start_time, :end_time)
  end

  def book_is_available(start_time, end_time, book)
    orders = Order.where(book_id: book.id)
    date_range = start_time...end_time
    orders.each do |order|
      if order.start_time === date_range || order.end_time === date_range
        return book_available = false
      else
       return book_available = true
      end
    end
  end
end
