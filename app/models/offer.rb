class Offer < ApplicationRecord

  validates :suggested_price, presence: true, numericality: { greater_than: 0 }



  #validates :status

  has_many :customers
  belongs_to :product
end
