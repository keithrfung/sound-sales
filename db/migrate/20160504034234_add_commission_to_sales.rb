class AddCommissionToSales < ActiveRecord::Migration
  def change
  	add_column :sales, :commission, :decimal
  end
end
