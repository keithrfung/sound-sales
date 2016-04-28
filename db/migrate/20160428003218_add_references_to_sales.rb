class AddReferencesToSales < ActiveRecord::Migration
  
  def change
  	change_table :sales do |t|
      add_reference :sales, :user, index: true
      add_reference :sales, :client, index: true
    end
  end

end
