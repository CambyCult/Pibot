class RigChecklist < ApplicationRecord
  has_many :manifests
  belongs_to :rig
  has_many :items, through: :manifests
end
