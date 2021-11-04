class DishesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with :render_not_found_response
  def index
    #combined to one line since we dont need it stored as a variable
    render json: Dish.all
    
  end

  def show
    dish = Dish.find_by(id: params[:id])
    render json: dish

  end

  def create
    Dish.create()
  end

  def update
    Dish.find_by()
  end

  def delete
    Dish.find_by()
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



# 10:45
# def find_bird 
#   Bird.find(id: params[:id])
# end


# def render_not_found_response
#   render json: { error: "Bird not found" }, status: :not_found
# end
# eyes
# heavy_check_mark
# call_me_hand





