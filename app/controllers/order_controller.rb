class OrderController < ApplicationController
	def new
		@order = Order.new
	end

	def show
		@order = Order.find_by(id: params[:format])
		
	end

	def create
		@order = Order.new(params.require(:order).permit(:name, :address, :pin, :mobile_no))
		@order.cart_id = current_cart.id
		if @order.save
			redirect_to order_show_path(@order)
		else
			redirect_to order_new_path
		end
	end

end