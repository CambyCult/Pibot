class AddCopyToChecklist < ActiveRecord::Migration[7.0]
  def change
    add_column :checklists, :copy, :boolean, default: false
  end
end
