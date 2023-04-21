class SetDefaultRigChecklist < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:rig_checklists, :copy, false)
  end
end
