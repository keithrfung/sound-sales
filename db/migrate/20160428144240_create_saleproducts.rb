class CreateSaleproducts < ActiveRecord::Migration
  def change
    create_table :saleproducts do |t|
      t.integer :sale_id
      t.integer :product_id

      t.timestamps
    end
  end
end
