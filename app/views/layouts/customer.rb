class Customer < ApplicationRecord
  validates :name, presence: true
  VALID_EMAIL_REGEX = /@/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }


  has_many :offers
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
