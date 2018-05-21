class Merchant < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, :format => /@/

  has_many :products
  has_secure_password

end
