class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :phone
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :name

      t.timestamps
    end
  end
end
