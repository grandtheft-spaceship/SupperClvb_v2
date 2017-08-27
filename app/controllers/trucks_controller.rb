class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.create(truck_params)
    redirect_to root_path

  end

  private

  def truck_params
    params.require(:truck).permit(:name, :description, :address)
  end

end
