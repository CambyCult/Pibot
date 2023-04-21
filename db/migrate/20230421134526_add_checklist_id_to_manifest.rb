class AddChecklistIdToManifest < ActiveRecord::Migration[7.0]
  def change
    add_column :manifests, :checklist_id, :integer
  end
end
