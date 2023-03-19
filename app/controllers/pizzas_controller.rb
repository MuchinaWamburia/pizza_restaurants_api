class PizzasController < ApplicationController
  def index
    pizzas = Pizza.includes(restaurant_pizzas: :restaurant)
    render json: pizzas.as_json(include: { restaurant_pizzas: { include: :restaurant } })
  end
  

  def show
    pizza = Pizza.find_by(id: params[:id])
    if pizza
      render json: pizza.as_json(include: {restaurants: {only: [:id, :name, :address], through: :restaurant_pizzas}} )
    else
      render json: {error: 'Pizza not found'}, status: :not_found
    end
  end
end
