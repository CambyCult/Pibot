class Item < ApplicationRecord
  has_many :rigs, through: :manifests
end
