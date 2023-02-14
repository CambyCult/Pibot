class ModifyRigIdUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :rig_id, :integer
  end
end
