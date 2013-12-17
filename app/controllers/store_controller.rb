class StoreController < ApplicationController
	skip_before_filter :check_login
  def index
  	@products = Product.all
  	@cart = cur_cart
  end
end
