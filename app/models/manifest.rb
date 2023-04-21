class Manifest < ApplicationRecord
  belongs_to :rig_checklist
  belongs_to :item
end
