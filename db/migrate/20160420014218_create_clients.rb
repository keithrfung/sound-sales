class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :clientId
      t.string :firstName
      t.string :lastName
      t.integer :phoneNumber
      t.string :addressLine1
      t.string :addressLine2
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipCode

      t.timestamps
    end
  end
end
