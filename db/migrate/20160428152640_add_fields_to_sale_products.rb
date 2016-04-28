class AddFieldsToSaleProducts < ActiveRecord::Migration
  def change
  	add_column :saleproducts, :sale_id, :integer
    add_column :saleproducts, :product_id, :integer
  end
end
