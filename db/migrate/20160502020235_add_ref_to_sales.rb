class AddRefToSales < ActiveRecord::Migration
  def change
  	change_table :sales do |t|
      add_reference :sales, :user, index: true
      add_reference :sales, :client, index: true
      add_reference :sales, :product, index: true
    end
  end
end
