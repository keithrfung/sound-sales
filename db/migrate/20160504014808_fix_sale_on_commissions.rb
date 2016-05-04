class FixSaleOnCommissions < ActiveRecord::Migration
  def change
  	remove_column :sales, :commissions_id, :integer
  	add_column :sales, :commission_id, :integer
  end
end
