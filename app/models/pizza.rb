class Pizza < ApplicationRecord  
  has_many :restaurant_pizzas, dependent: :destroy
  has_many :restaurants, through: :restaurant_pizzas
  # validates :name, :ingredients, :price, presence: true
  # validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 30 }
  
end