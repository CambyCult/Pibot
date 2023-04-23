class RigChecklist < ApplicationRecord
  has_many :manifests
  belongs_to :rig
  has_many :items, through: :manifests

  def manifests_long
    arr = []
    self.manifests.each do |manifest|
      manifest_obj = {
        manifest_id: manifest.id,
        item: manifest.item.name,
        minimum: manifest.item.minimum,
        actual_count: manifest.actual_count,
      }
      arr << manifest_obj
    end
    return arr
  end
end
