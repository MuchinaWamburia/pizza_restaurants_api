class Pizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :restaurant
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas
  validates :name, :ingredients, :price, presence: true
  validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 30 }
  
  def price
    # base_price = case size
    #   when 'small' then 8
    #   when 'medium' then 10
    #   when 'large' then 12
    #   else 0
    # end

    # crust_surcharge = case crust
    #   when 'thin' then 0
    #   when 'stuffed' then 2
    #   when 'deep dish' then 3
    #   else 0
    # end

    # topping_surcharge = toppings.sum do |topping|
    #   case topping
    #     when 'vegetable' then 1
    #     when 'meat' then 2
    #     else 0
    #   end
    # end

    # base_price + crust_surcharge + topping_surcharge
  end
  def calculate_price
    base_price = 5
    ingredient_price = 2
    price = base_price + (self.ingredients.count * ingredient_price)
    self.price = price
  end
end