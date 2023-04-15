class Rig < ApplicationRecord
  has_one :boolean_checklist
  has_one :item_checklist

  def users
    User.where(rig_id: id)
  end
end
