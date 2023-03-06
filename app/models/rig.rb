class Rig < ApplicationRecord
  has_one :checklist

  def users
    User.where(rig_id: id)
  end
end
