class CreateTableSalesContainsProducts < ActiveRecord::Migration
  
  def change
    create_table :table_sales_contains_products, id: false do |t|
      t.belongs_to :sale, index: true
      t.belongs_to :product, index: true
    end
  end
  
end
