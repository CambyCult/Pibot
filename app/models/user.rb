class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true

  def rig
    Rig.find_by(id: user_id)
  end
end
