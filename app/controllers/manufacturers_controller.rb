class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
  end

  def create
    new_manufacturer = Manufacturer.create(name: params[:name],
                        location: params[:location])
    redirect_to manufacturer_path(new_manufacturer.id)
  end

  def edit
  end

  def update
    Manufacturer.create(name: params[:name],
                        location: params[:location])
    redirect_to manufacturer_path(params[:id])
  end

end