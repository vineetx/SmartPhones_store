class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_cart
  	cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    session[:cart_id] = cart.id
    cart.price ||= 0
    cart.save
    cart
    
  end
  
end