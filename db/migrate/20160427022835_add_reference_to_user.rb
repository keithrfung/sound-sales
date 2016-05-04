class AddReferenceToUser < ActiveRecord::Migration

  def change
  	change_table :users do |t|
      t.references :manager, index: true
    end
  end

end
