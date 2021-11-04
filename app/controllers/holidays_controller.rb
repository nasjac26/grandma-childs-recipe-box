class HolidaysController < ApplicationController
  def index
  end

  def show
  end



  private

  def find_holiday
    Dish.find_by(id: params[:id])
  end

  def render_not_found_response
    render json: { error: "Holiday not found" }, status: :not_found
  end

end
