class Rig < ApplicationRecord
  has_one :checklist
  has_one :boolean_checklist

  def users
    User.where(rig_id: id)
  end
end
