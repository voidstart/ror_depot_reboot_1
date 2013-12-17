class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :check_login

protected
  def check_login
    if session[:user_id] and User.find(session[:user_id])
      true
    else
      redirect_to login_url, alert: "Please login"
    end
  end

private
  def cur_cart
    begin
      cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      cart_id = cart.id
      session[:cart_id] = cart_id
      cart
    end
  end
end
