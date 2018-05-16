class Product < ApplicationRecord
  validates_presence_of :author, :title, :isbn, 
  validates_length_of :isbn, :minimum => 10
  belongs_to :merchant
end
