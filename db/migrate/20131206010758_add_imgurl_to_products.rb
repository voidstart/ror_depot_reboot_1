class AddImgurlToProducts < ActiveRecord::Migration
  def change
	  add_column :products, :imgurl, :string
  end
end
