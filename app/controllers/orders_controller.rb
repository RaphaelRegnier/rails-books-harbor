class OrdersController < ApplicationController

  def create
@book = Book.find(params[:book_id])
@order = Order.new(order_params)
@order.book = @book
redirect_to book_path(@book)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to(:back)
  end

  private

  def order_params
    params.require(:order).permit(:start_time, :end_time, :book_id)
  end
end
