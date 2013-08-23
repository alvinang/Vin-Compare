class VinsController < ApplicationController

  def new
    @vin = Vin.new
  end

  def create
    @vin = Vin.new(vin_params)
    @vin.save

    render 'vins/checkout'
  end

  def checkout
    @vin
  end

  def vin_params
    params.require(:vin).permit(:vin_number)
  end

end
