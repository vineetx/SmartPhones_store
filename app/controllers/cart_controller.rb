class CartController < ApplicationController
	def show
		@show = current_cart.line_items

	end

	def destroy
		
	end
end
