class SalonsController < ApplicationController
  def show
    @salon = Salon.find(params[:id])
    @pet = Pet.new
  end
end
