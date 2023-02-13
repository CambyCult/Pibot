class Rig < ApplicationRecord
  def users
    User.where(rig_id: id)
  end
end
