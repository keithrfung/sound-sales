class RenameTableSalesContainsProducts < ActiveRecord::Migration
  
	def change
    	rename_table :table_sales_contains_products, :Sales_Products
	end 
  
end
