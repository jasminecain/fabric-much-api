class User < ApplicationRecord
  has_many :fabrics
  has_many :bolts
  has_many :swatches
  has_secure_password
end
