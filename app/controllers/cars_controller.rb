class CarsController < ApplicationController
  def index
    @cars = Car.order(:created_at)
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      flash[:notice] = 'Car Added.'
      redirect_to cars_path
    else
      flash.now[:notice] = 'We couldn\'t save your car!'
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:model_name, :manufacturer_id, :year, :mileage, :description, :color)
  end
end
