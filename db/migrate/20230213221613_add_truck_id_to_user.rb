class AddTruckIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :truck_id, :integer
  end
end
