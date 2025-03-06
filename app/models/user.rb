class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, if: -> { password.present? }

  has_many :notes
end
