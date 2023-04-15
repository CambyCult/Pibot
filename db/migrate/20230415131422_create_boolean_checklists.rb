class CreateBooleanChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :boolean_checklists do |t|
      t.boolean "exterior_done", default: false
      t.boolean "ems_lights", default: false
      t.boolean "tires_done", default: false
      t.boolean "oil_checked", default: false
      t.boolean "sirens", default: false
      t.boolean "seatbelts", default: false
      t.boolean "interior_clean", default: false
      t.string "signed_by"
      t.string "shift"
      t.integer "rig_id"
      t.timestamps
    end
  end
end
