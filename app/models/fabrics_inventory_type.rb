class FabricsInventoryType < ApplicationRecord
  belongs_to :fabric
  belongs_to :inventory_type, :dependent => :destroy
end
