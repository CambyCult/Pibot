class RigChecklist < ApplicationRecord
  has_many :manifests
  belongs_to :rig
  has_many :items, through: :manifests

  amoeba do
    enable
    exclude_association :rig

    prepend :copy => true
  end

  def manifests_long
    arr = []
    self.manifests.each do |manifest|
      manifest_obj = {
        manifest_id: manifest.id,
        checklist_id: manifest.rig_checklist.id,
        rig_id: manifest.rig_checklist.rig_id,
        item: manifest.item.name,
        minimum: manifest.item.minimum,
        actual_count: manifest.actual_count,
      }
      arr << manifest_obj
    end
    return arr
  end
end
