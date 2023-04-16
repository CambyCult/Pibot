class Rig < ApplicationRecord
  has_one :boolean_checklist
  has_one :item_checklist
  has_many :items, through: :manifests
  has_many :manifests

  def users
    User.where(rig_id: id)
  end
end
