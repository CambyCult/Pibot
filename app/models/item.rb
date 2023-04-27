class Item < ApplicationRecord
  has_many :manifests, dependent: :destroy
  has_many :rig_checklists, through: :manifests
end
