class Fabric < ApplicationRecord
  belongs_to :user
  belongs_to :bolt
  belongs_to :fabric_type
  has_one :swatch
end
