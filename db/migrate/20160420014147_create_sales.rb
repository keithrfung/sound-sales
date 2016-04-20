class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :salesId
      t.float :tax
      t.datetime  :saleDate
      t.integer :sellerId
      t.integer :buyerId
      t.string :paymentType
      t.integer :quantity
      t.integer :productId

      t.timestamps
    end
  end
end
