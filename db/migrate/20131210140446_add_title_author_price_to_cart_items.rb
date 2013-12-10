class AddTitleAuthorPriceToCartItems < ActiveRecord::Migration
  def change
	  add_column :cart_items, :price, :decimal
	  add_column :cart_items, :title, :string
	  add_column :cart_items, :author, :string
  end
end
