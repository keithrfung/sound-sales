class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.integer :regionId
      t.integer :managerId
      t.string :name
      t.string :state
      t.integer :zipCode
      t.string :country
      t.string :area
      t.string :city

      t.timestamps
    end
  end
end
