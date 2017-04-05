class HomeController < ApplicationController
	def show
		@products = Product.all
		@cart_count = current_cart.line_items.count
	end
end
