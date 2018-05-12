class Customer < ApplicationRecord
  validates :name, presence: true
  VALID_EMAIL_REGEX = /@/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  has_many :offers
end
