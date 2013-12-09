class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
  def cur_cart
    cart_id = session[:cart_id]
    begin
      cart = Cart.find(cart_id)
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      cart_id = cart.id
      session[:cart_id] = cart_id
    end
    cart
  end
end
