class Fabric < ApplicationRecord
  belongs_to :user
  belongs_to :fabric_type
  has_one :swatch

  STORES = %w[Joanns HobbyLobby Fabric.com Walmart]

  FABRIC_TYPES = %w[Cotton Licensed Fabric Character Fabric Nursery\ Team Fabric Flannel Felt\ Fleece Holiday Premium Cotton]

end
