class AddDefaultToCartItems < ActiveRecord::Migration
  def change
  	change_column :cart_items, :quantity, :integer, :deafult => 1
  end
end
