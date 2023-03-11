class Checklist < ApplicationRecord
  belongs_to :rig

  amoeba do
    enable
    exclude_association :rig
    prepend :copy => true
  end
end
