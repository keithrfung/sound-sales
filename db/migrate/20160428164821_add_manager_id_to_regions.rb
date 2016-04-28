class AddManagerIdToRegions < ActiveRecord::Migration
  def change
    add_column :regions, :manager_id, :integer
  end
end
