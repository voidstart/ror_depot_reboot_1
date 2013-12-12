class StoreController < ApplicationController
  def index
  	@products = Product.all
  	@cart = cur_cart
  end
end
