class VinsController < ApplicationController

  layout 'vins'

  def new
    @vin = Vin.new
  end

  def create
    @vin = Vin.new(vin_params)
    
    begin
      @vin.save if @vin.check_vin
      render 'vins/compare'
    rescue ArgumentError => e
      flash[:notice] = e.message
      redirect_to root_url
    end
  end

  def compare
  end

  private

  def vin_params
    params.require(:vin).permit(:vin_number)
  end

end
