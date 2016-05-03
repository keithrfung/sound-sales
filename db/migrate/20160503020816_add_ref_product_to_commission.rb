class AddRefProductToCommission < ActiveRecord::Migration
  def change
  	change_table :commissions do |t|
      add_reference :commissions, :products, index: true
    end
  end
end
