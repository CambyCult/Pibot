class CreateRigChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :rig_checklists do |t|
      t.integer :rig_id
      t.string :signed_by
      t.boolean :copy

      t.timestamps
    end
  end
end
