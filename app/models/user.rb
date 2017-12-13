class User < ApplicationRecord
  has_many :fabrics
  has_many :bolts
  has_many :swatches
  has_secure_password

  def self.from_token_request request
    # Returns a valid user, `nil` or raise `Knock.not_found_exception_class_name`
    # e.g.
      email = request.params["auth"] && request.params["auth"]["email"]
      self.find_by email: email
  end

  def self.from_token_payload payload
    # Returns a valid user, `nil` or raise
    # e.g.
      self.find payload["sub"]
  end

  def to_token_payload
    # Returns the payload as a hash
  end
end
