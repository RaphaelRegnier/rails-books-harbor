class OrdersController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @order = Order.new(order_params)
    @order.book = @book
    #NEED TO LINK THE ORDER TO THE USER TO MAKE THE ORDER VALID FOR SAVE.
    @order.user = current_user
    @order.save
    redirect_to current_user
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
end
