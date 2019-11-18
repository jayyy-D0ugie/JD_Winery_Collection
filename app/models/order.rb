class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  belongs_to :product
  belongs_to :shipment

  validates :orderDate, :orderQuantity, presence: true
end
