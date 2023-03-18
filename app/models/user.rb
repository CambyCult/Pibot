class User < ApplicationRecord
  has_secure_password :validations => false
  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :messages

  def rig
    Rig.find_by(id: user_id)
  end

  private
end
