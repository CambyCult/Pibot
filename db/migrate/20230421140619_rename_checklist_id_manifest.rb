class RenameChecklistIdManifest < ActiveRecord::Migration[7.0]
  def change
    rename_column(:manifests, :checklist_id, :rig_checklist_id)
  end
end
