class Merchant < ApplicationRecord
  validates :name, presence: true
  

  has_many :products
  has_secure_password
  validates :email, uniqueness: true, presence: true

end
