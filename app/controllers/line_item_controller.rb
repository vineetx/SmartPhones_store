class LineItemController < ApplicationController
	def create
		@product = Product.find_by(id: params[:product])
		line_item = current_cart.line_items.find_by(product_id: @product)
		if line_item
			line_item.quantity += 1
		else
			line_item = current_cart.line_items.build(product_id: @product.id)
			line_item.quantity = 1
		end
		line_item.save
		current_cart.price += line_item.product.price
		current_cart.save
		redirect_to root_path
		
	end

	def destroy
		current_cart.line_items.find_by(product_id: params[:product]).delete
		redirect_to carts_show_path
	end

	
end
