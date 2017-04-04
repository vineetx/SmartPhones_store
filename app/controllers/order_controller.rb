class OrderController < ApplicationController
	def new
		@order = Order.new
	end

	def show

	end

	def create
	debugger
	@order = orders.build(params.require(:order).permit(:name, :address, :pin, :mobile_no,:user_id))
	@order.cart_id = current_cart.id
	end

end
