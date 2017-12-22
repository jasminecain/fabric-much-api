class User < ApplicationRecord
  has_many :fabrics
  # has_many :bolts
  # has_many :swatches
  has_secure_password

  has_attached_file :fabric_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :fabric_image, content_type: /\Aimage\/.*\z/
end
