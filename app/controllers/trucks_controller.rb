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

  def show
    @truck = Truck.find(params[:id])
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
    @truck.update_attributes(truck_params)

    redirect_to truck_path
  end

  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy

    redirect_to root_path
  end

  private

  def truck_params
    params.require(:truck).permit(:name, :description, :address)
  end

end
