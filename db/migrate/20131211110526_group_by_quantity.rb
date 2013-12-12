class GroupByQuantity < ActiveRecord::Migration
  def up
  	carts = Cart.all
  	carts.each do |c|
  		sums = c.cart_items.group(:product_id).sum(:quantity)
  		sums.each do |product_id, quantity|
  			if quantity > 1
  				c.cart_items.where(product_id: product_id).delete_all

  				c.cart_items.create(product_id: product_id, quantity: quantity)
  			end
  		end
  	end

  end
end
