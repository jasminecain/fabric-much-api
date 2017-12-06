class Swatch < ApplicationRecord
  belongs_to :bolt
  belongs_to :fabric
  belongs_to :user
end
