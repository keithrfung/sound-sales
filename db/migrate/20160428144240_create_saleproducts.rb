class CreateSaleproducts < ActiveRecord::Migration
  def change
    create_table :saleproducts do |t|

      t.timestamps
    end
  end
end
