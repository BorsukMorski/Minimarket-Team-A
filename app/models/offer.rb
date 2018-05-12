class Offer < ApplicationRecord

  t.belongs_to :customer
  t.belongs_to :product
end
