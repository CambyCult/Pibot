class CreateManifests < ActiveRecord::Migration[7.0]
  def change
    create_table :manifests do |t|
      t.integer :rig_id
      t.integer :item_id
      t.integer :actual_count
      t.timestamps
    end
  end
end
