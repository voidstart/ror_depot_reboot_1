class AddCartidToCartItems < ActiveRecord::Migration
  def change
  	add_column :cart_items, :cart_id, :integer
  	add_column :cart_items, :product_id, :integer
  end
end
