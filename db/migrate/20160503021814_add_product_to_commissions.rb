class AddProductToCommissions < ActiveRecord::Migration
  def change
  	add_column :commissions, :product_id, :integer
  end
end
