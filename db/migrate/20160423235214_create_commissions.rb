class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.decimal :amount
      t.integer :sale_id

      t.timestamps
    end
  end
end
