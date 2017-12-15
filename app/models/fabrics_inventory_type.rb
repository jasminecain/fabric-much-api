class FabricsInventoryType < ApplicationRecord
  belongs_to :user
  belongs_to :fabric
  belongs_to :inventory_type
end
