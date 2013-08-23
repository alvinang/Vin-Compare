class VinsController < ApplicationController

  def new
    @vin = Vin.new
  end

  def create
    @vin = Vin.new(vin_params)
    @vin.save

    redirect_to '/'
  end

  def vin_params
    params.require(:vin).permit(:vin_number)
  end

end
