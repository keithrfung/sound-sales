class DropTableSalesProducts < ActiveRecord::Migration
  
  def change
  	drop_table :Sales_Products
  end

end
