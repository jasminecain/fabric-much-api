class FabricsInventoryType < ApplicationRecord
  belongs_to :fabric
  has_one :inventory_type, :dependent => :destroy
end
