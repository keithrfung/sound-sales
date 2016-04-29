class AddSaleToCommissions < ActiveRecord::Migration
  
  def change
  	add_column :commissions, :sale_id, :integer
  end

end
