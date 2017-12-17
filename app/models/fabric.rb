class Fabric < ApplicationRecord
  belongs_to :user
  belongs_to :fabric_type
  has_one :fabrics_inventory_types, :class_name => 'FabricsInventoryType'
  has_one :inventory_type, :through => :fabrics_inventory_types

  STORES = %w[Joanns HobbyLobby Fabric.com Walmart]

  FABRIC_TYPES = %w[Cotton Licensed Fabric Character Fabric Nursery\ Team Fabric Flannel Felt\ Fleece Holiday Premium Cotton]

end
