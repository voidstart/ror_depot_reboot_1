class Cart < ActiveRecord::Base
	has_many :cart_items

	def total_price
		sum = 0
		cart_items.each do |c|
			sum += c.product.price * c.quantity
		end
		sum
	end

	def add_product(product_id)
		existing_cart_item = cart_items.find_by_product_id(product_id)
		if existing_cart_item
			existing_cart_item.quantity += 1
		else
			existing_cart_item = cart_items.build(product_id: product_id)
		end
		existing_cart_item
	end
end
