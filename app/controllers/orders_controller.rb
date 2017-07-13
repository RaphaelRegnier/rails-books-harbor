class OrdersController < ApplicationController

  def create
    @book = Book.find(params[:book_id])

    # @orders = Order.where(book_id: @book.id).where("(DATEDIFF(order.start_time, ?) * DATEDIFF(?, order.end_time)) >= 0", params[:order][:start_time].to_date, params[:order][:end_time].to_date)


    # if @orders.count > 0
    #   render show
    # else
      @order = Order.new(order_params)
      @order.book = @book
      @order.user = current_user
      @order.save
      redirect_to book_path(@book)
    # end
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
