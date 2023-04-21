class RemoveRigIdFromManifests < ActiveRecord::Migration[7.0]
  def change
    remove_column :manifests, :rig_id, :integer
    add_column :manifests, :actual_count, :integer
  end
end
