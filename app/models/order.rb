class Order < ActiveRecord::Base
	has_many :cart_items, dependent: :destroy

public
	def add_cart_items_from_cart(cart)
		cart.cart_items.each do |item|
			cart_items << item
		end
	end
end
