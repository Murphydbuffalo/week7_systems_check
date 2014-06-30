class ManufacturersController < ApplicationController
  def index
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      flash[:notice] = 'Manufacturer Added.'
      redirect_to manufacturers_path
    else
      flash.now[:notice] = 'We couldn\'t save your manufacturer!'
      render :new
    end
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end
