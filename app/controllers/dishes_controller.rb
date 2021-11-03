class DishesController < ApplicationController
  def index
    #combined to one line since we dont need it stored as a variable
    render json: Dish.all
    
  end

  def show
    Dishes.find_by(id: params[:id])
  end



  private

  def dish_params
    params.permit(:food, :category, :vegetarian, :gluten_free)
  end

end


