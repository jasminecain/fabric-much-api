class Fabric < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :fabric_type

  has_one :fabrics_inventory_types, :class_name => 'FabricsInventoryType'
  has_one :inventory_type, :through => :fabrics_inventory_types

  STORES = %w[Joanns HobbyLobby Fabric.com Walmart]

  FABRIC_TYPES = %w[Cotton Licensed Fabric Character Fabric Nursery\ Team Fabric Flannel Felt\ Fleece Holiday Premium Cotton]

  has_attached_file :fabric_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :fabric_image, content_type: /\Aimage\/.*\z/
end
