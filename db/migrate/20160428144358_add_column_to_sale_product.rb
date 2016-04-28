class AddColumnToSaleProduct < ActiveRecord::Migration
  
  def change
    add_column :saleproducts, :sales_id, :integer
    add_column :saleproducts, :products_id, :integer
  end

end
