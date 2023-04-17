class CreateItemChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :item_checklists do |t|
      t.integer "extinguisher_min", default: 2
      t.integer "extinguisher_actual", default: 0
      t.integer "towels_min", default: 2
      t.integer "towels_actual", default: 0
      t.integer "adult_cannula_min", default: 4
      t.integer "adult_cannula_actual", default: 0
      t.integer "stethoscope_adult_min", default: 2
      t.integer "stethoscope_adult_actual", default: 0
      t.integer "triage_tags_min", default: 25
      t.integer "triage_tags_actual", default: 0
      t.integer "trauma_dressings_min", default: 4
      t.integer "trauma_dressings_actual", default: 0
      t.integer "roll_gauze_min", default: 12
      t.integer "roll_gauze_actual", default: 0
      t.integer "oral_glucose_min", default: 2
      t.integer "oral_glucose_actual", default: 0
      t.integer "splint_upper_min", default: 2
      t.integer "splint_upper_actual", default: 0
      t.integer "exam_gloves_min", default: 10
      t.integer "exam_gloves_actual", default: 0
      t.integer "shield_min", default: 4
      t.integer "shield_actual", default: 0

      t.timestamps
    end
  end
end
