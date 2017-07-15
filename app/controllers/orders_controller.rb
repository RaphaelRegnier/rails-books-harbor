class OrdersController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @order = Order.new(order_params)
    @order.book = @book
    @order.user = current_user
    if book_is_available(@order.start_time, @order.end_time, @book) && current_user != @book.user
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
    book_available = true
    orders.each do |order|
      if date_range.cover?(order.start_time) || date_range.cover?(order.end_time) || (order.start_time...order.end_time).cover?(@order.start_time) || (order.start_time...order.end_time).cover?(@order.end_time)
        return book_available = false
      break
      end
    end
  end
end
