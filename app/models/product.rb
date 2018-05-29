class Product < ApplicationRecord
  has_many :cart_products

  has_many :products, through: :cart_products

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
