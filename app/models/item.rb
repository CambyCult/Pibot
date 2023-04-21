class Item < ApplicationRecord
  has_many :manifests
  has_many :rig_checklists, through: :manifests
end
