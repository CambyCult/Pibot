class ChangeColumnRigIdChecklist < ActiveRecord::Migration[7.0]
  def change
    change_column :checklists, :rig_id, :integer, default: 11 
  end
end
