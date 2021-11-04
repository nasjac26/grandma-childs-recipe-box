class HolidaysController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  def index
    #combined to one line since we dont need it stored as a variable
    render json: Holiday.all
    
  end

  def show
    holiday = find_holiday
    render json: holiday

  end

  def create 
    holiday = Holiday.create(holiday_params)
    render json: holiday, status: :created
  end

  def update 
    holiday = find_holiday
    holiday.update(holiday_params)
    render json: holiday
  end

  def destroy #NEED
    holiday = find_holiday
    holiday.destroy
    head :no_content
  end

  private

  #strong params
  def holiday_params
    params.permit(:name, :month, :day)
  end

  def find_holiday
    holiday.find_by(id: params[:id])
  end

  def render_not_found_response
    render json: { error: "Holiday not found" }, status: :not_found
  end

  
end
