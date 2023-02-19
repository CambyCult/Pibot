class ChangeConesActualofChecklist < ActiveRecord::Migration[7.0]
  def change
    change_column :checklists, :cones_actual, :integer, default: 0
  end
end
