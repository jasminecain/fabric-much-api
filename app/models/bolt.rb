class Bolt < ApplicationRecord
  belongs_to :user
  belongs_to :fabric_type
end
