class OrdersController < ApplicationController

  def create
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(:start_time, :end_time, :book_id)
  end
end
