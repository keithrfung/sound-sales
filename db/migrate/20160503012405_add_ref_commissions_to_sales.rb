class AddRefCommissionsToSales < ActiveRecord::Migration
  def change
  	change_table :sales do |t|
      add_reference :sales, :commissions, index: true
    end
  end
end
