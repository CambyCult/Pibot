class AddRigIdToChecklist < ActiveRecord::Migration[7.0]
  def change
    add_column :checklists, :rig_id, :integer, default: nil
  end
end
