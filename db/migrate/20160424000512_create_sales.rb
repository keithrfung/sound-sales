class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :quantity
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total
      t.string :payment_type
      t.datetime :sale_date

      t.timestamps
    end
  end
end
