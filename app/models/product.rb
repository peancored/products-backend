class Product < ApplicationRecord
  has_many :details, dependent: :destroy
  belongs_to :category
end
