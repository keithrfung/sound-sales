class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.decimal :amount

      t.timestamps
    end
  end
end
