class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :productId
      t.string :name
      t.text :description
      t.float :price
      t.integer :type
      t.float :commissionRate

      t.timestamps
    end
  end
end
