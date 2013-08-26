class VinsController < ApplicationController

  layout 'vins'

  def new
    @vin = Vin.new
  end

  def create
    @vin = Vin.new(vin_params)
    @vin.save

    render 'vins/compare'
  end

  def compare
    @vin
  end

  def vin_params
    params.require(:vin).permit(:vin_number)
  end

end
