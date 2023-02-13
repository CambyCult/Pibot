class RenameTruckIdofUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rig_id, :integer
    remove_column :users, :truck_id, :integer
  end
end
