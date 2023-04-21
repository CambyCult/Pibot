class Item < ApplicationRecord
  has_many :rigs, through: :manifests
  has_many :manifests
end
