class DeletePriceFromCartItems < ActiveRecord::Migration
  def change
  	remove_column :cart_items, :price
  	remove_column :cart_items, :author
  	remove_column :cart_items, :title
  end
end
