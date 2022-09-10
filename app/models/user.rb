class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true

  #BCrypt::Password  ...

  validates :password, confirmation: { case_sensitive: true }
end
