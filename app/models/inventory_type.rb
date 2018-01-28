class InventoryType < ApplicationRecord
  belongs_to :fabrics_inventory_types, :class_name => 'FabricsInventoryType', optional: true
end
