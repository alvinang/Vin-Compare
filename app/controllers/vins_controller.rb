class VinsController < ApplicationController

  layout 'vins'

  def new
    @vin = Vin.new
  end

  def create
    @vin = Vin.new(vin_params)
    if CheckVin::VinValidator.check_num?(@vin.vin_number) == true
      @vin.save
      render 'vins/compare'
    else
      redirect_to root_path
    end
  end

  def compare
    @vin
  end

  private

  def vin_params
    params.require(:vin).permit(:vin_number)
  end

end
