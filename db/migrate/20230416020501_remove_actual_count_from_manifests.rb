class RemoveActualCountFromManifests < ActiveRecord::Migration[7.0]
  def change
    remove_column :manifests, :actual_count, :integer
  end
end
