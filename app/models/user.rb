class User < ApplicationRecord
  has_secure_password

  validates :password, confirmation: { case_sensitive: true }
end
