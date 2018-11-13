class Product < ApplicationRecord
  has_many :details
  belongs_to :category
end
