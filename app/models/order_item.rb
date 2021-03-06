class OrderItem < ApplicationRecord
  validates :number, presence: true
  validates :price, presence: true

  belongs_to :order, autosave: true
  belongs_to :product
end
