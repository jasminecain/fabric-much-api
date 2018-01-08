class User < ApplicationRecord
  has_secure_password
  has_many :fabrics
  # has_many :bolts
  # has_many :swatches
end
