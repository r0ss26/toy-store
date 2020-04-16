class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find_by_name(params[:toy])
  end

  def delete
    Toy.find_by_name(params[:toy]).destroy
    redirect_to toys_path
  end
end