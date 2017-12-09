class FabricType < ApplicationRecord
  has_many :fabrics
  has_many :bolts
end
