class InventoryType < ApplicationRecord
  # has_many :fabrics_inventory_types
  # has_many :fabrics, :through => :fabrics_inventory_types
  belongs_to :fabrics_inventory_types, :class_name => 'FabricsInventoryType'
end
