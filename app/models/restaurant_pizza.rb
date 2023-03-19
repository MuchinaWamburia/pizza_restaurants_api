class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
