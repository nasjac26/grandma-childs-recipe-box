class DishesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  def index
    #combined to one line since we dont need it stored as a variable
    render json: Dish.all
    
  end

  def show
    dish = find_dish
    render json: dish

  end

  def create 
    dish = Dish.create(dish_params)
    render json: dish, status: :created
  end

  def update 
    dish = find_dish
    dish.update(dish_params)
    render json: dish
  end

  def destroy #NEED
    dish = find_dish
    dish.destroy
    head :no_content
  end

  private

  #strong params
  def dish_params
    params.permit(:food, :category, :vegetarian, :gluten_free)
  end

  def find_dish
    Dish.find_by(id: params[:id])
  end

  def render_not_found_response
    render json: { error: "Dish not found" }, status: :not_found
  end

  

end








