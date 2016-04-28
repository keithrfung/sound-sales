class RemoveManagerFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :manager, :string
  end
end
