class AddRigIdToItemsChecklist < ActiveRecord::Migration[7.0]
  def change
    add_column :item_checklists, :rig_id, :integer
    add_column :item_checklists, :signed_by, :string
    add_column :item_checklists, :shift, :string
  end
end
