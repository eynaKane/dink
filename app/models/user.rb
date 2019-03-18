class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :username, :email, :password_confirmation, presence: true
  validates :password, confirmation: true
end
