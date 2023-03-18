class RestaurantPizzasController < ApplicationController

  def index
    restaurant_pizzas = RestaurantPizza.all
    render json: restaurant_pizzas
  end
  
  def create
    restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
    if restaurant_pizza.save
      render json: restaurant_pizza.pizza.as_json(only: [:id, :name, :ingredients])
    else
      render json: {errors: restaurant_pizza.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def restaurant_pizza_params
    params.require(:restaurant_pizza).permit(:price, :restaurant_id, :pizza_id)
  end
end