class DropChecklist < ActiveRecord::Migration[7.0]
  def change
    drop_table :checklists
  end
end
